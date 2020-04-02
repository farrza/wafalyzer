require "logger"

require "./issue"

module Wafalyzer
  class Report
    @issues : Array(Issue)
    @logger = Logger.new(STDOUT)

    def initialize(@target : String)
      @issues = Array(Issue).new
    end

    def target
      @target
    end

    def issues
      @issues
    end

    def <<(issue : Issue)
      @issues << issue
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
      @logger.info("Detected:")
      @issues.each do |issue|
        @logger.info(issue.name) if issue.positive?
      end
    end
  end
end
