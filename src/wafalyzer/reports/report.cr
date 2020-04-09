require "logger"

require "./issue"

module Wafalyzer
  class Report
    @issues : Array(Issue)
    @logger = Logger.new(STDOUT)

    def initialize(@target : String = "")
      @issues = Array(Issue).new
    end

    def target
      @target
    end

    def issues
      @issues
    end

    def <<(report : Report)
      report.issues.each do |issue|
        @issues << issue if !issue.name.empty?
      end
    end

    def <<(issue : Issue)
      @issues << issue if !issue.name.empty?
    end

    def self.positive?
      @issues.each do |issue|
        return true if issue.positive?
      end
      false
    end

    def positive?
      @issues.each do |issue|
        return true if issue.positive?
      end
      false
    end

    def negative?
      @issues.each do |issue|
        return false if issue.positive?
      end
      true
    end

    def summary
      wafs = Array(String).new
      @issues.each do |issue|
        wafs << issue.name if issue.positive?
      end
      wafs
    end

    def log
      if self.positive?
        puts "\e[36m[✔] Detected:\e[0m"
        @issues.each do |issue|
          puts "\e[37m- " + issue.name + "\e[0m" if issue.positive?
        end
      else
        puts "\e[31m[✘] No WAF was detected!\e[0m"
      end
    end
  end
end
