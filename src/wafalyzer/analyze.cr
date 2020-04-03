require "logger"

require "./wafs"
require "./reports/report"

module Wafalyzer
  class Analyze
    @@logger = Logger.new(STDOUT)

    def self.target(url : String)
      report = Report.new(url)

      puts "[*] Analyzing #{report.target}"

      responses = {
        normal: HTTP::Client.get(url),
        attack: HTTP::Client.get(url + "?" + QUERY),
      }

      WAFS.each_value do |waf|
        report << waf.analyze(responses)
      end

      report.log

      report
    end

    def self.targets(urls : Array(String))
      reports = Array(Report).new
      urls.each do |url|
        reports << self.target(url)
      end
      reports
    end
  end
end
