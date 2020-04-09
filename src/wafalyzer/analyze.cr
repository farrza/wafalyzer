require "logger"

require "./wafs"
require "./reports/report"

module Wafalyzer
  class Analyze
    @@logger = Logger.new(STDOUT)

    def self.target(target : String)
      report = Report.new(target)
      if !self.valid_target? target
        puts "\e[31m[✘] #{target} is not a valid target!\e[0m"
        return report
      end

      redirection = false

      puts "[*] Analyzing \e[36m#{report.target}\e[0m"
      puts "[*] \e[36mStandard analysis\e[0m started"

      begin
        responses = {
          normal: HTTP::Client.get(target),
          attack: HTTP::Client.get(target + "?" + QUERY),
        }
      rescue
        puts "\e[31m[✘] Could not connect to #{target}!\e[0m"
        return report
      end

      report << self.standard_analysis(responses)

      puts "\e[33m[!] Standard analysis unsuccessful!\e[0m" if report.negative?

      report << self.alternative_analysis(target, responses) if report.negative?

      puts "\e[33m[!] Alternative analysis unsuccessful!\e[0m" if report.negative?

      report.log
      report
    end

    def self.standard_analysis(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response)) : Report
      report = Report.new
      WAFS.each_value do |waf|
        report << waf.analyze(responses)
      end
      report
    end

    def self.alternative_analysis(target : String, responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      puts "[*] \e[36mAlternative analysis\e[0m started!"

      report = Report.new

      redirection = false
      redirection |= self.redirect?(responses[:attack].status_code)

      if redirection
        report << self.spirit_bomb_attack(target, responses)
      else
        report << self.attack(target, responses, XSS, "XSS")
        report << self.attack(target, responses, SQLI, "SQLI") if report.negative?
        report << self.attack(target, responses, LFI, "LFI") if report.negative?
      end

      report
    end

    def self.valid_target?(target : String)
      uri = URI.parse target
      uri.absolute?
    end

    def self.redirect?(status_code : Int)
      status_code >= 300 & status_code <= 308
    end

    def self.spirit_bomb_attack(target : String, responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      report = Report.new
      path = responses[:attack].headers["Location"]? # IMPROVE THIS!!!
      if path
        redirect_target = target + path
        begin
          redirection_responses = {
            normal: HTTP::Client.get(redirect_target),
            attack: HTTP::Client.get(redirect_target + "?" + QUERY),
          }
        rescue
          puts "\e[31m[✘] Could not connect to #{target}!\e[0m"
        end
        report << self.standard_analysis(redirection_responses) if redirection_responses
      end
      report
    end

    def self.attack(target : String, responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response), payload : String, name : String)
      puts "Starting #{name}"
      report = Report.new
      params = HTTP::Params.encode({"a" => payload})
      response = HTTP::Client.get target + "?" + params

      if response.status_code != responses[:normal].status_code
        puts "Different status code after #{name}"

        if self.redirect?(response.status_code)
          path = response.headers["Location"]? # improve this
          if path
            redirect_target = target + path

            begin
              redirection_responses = {
                normal: HTTP::Client.get(redirect_target),
                attack: HTTP::Client.get(redirect_target + "?" + payload),
              }
            rescue
              puts "\e[31m[✘] Could not connect to #{target}!\e[0m"
            end

            report << self.standard_analysis redirection_responses if redirection_responses
          end
        end
      end
      report
    end
  end
end
