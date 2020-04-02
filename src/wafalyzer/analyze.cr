require "logger"

require "./wafs"
require "./reports/report"

module Wafalyzer
  class Analyze
    @@logger = Logger.new(STDOUT)

    def self.target(url : String)
      report = Report.new(url)

      @@logger.info("====================| Wafalyzer |====================")
      @@logger.info("Analyzing target: #{report.target}")
      @@logger.info("-----------------------------------------------------")

      responses = {
        normal: HTTP::Client.get(url),
        attack: HTTP::Client.get(url + "?" + QUERY),
      }

      WAFS.each_value do |waf|
        report << waf.analyze(responses)
      end

      report.log

      @@logger.info("=====================================================")

      report
    end

    def self.targets(urls : Array(String))
      urls.each do |url|
        self.target(url)
      end
    end
  end
end
