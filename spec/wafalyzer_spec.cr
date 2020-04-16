require "spec"
require "logger"
require "../src/wafalyzer/wafs"

module Wafalyzer
  logger = Logger.new(STDOUT)

  describe Wafalyzer::Waf do
    WAF_LIBRARY.each_value do |waf|
      it "detects #{waf.name} WAF" do
        waf.test.should be_true
        logger.info("Success for #{waf.name}")
      end
    end
  end
end
