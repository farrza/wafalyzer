require "spec"
require "log"
require "../src/wafalyzer/wafs"

module Wafalyzer
  describe Wafalyzer::Waf do
    WAF_LIBRARY.each_value do |waf|
      it "detects #{waf.name} WAF" do
        waf.test.should be_true
        Log.info { "Success for #{waf.name}" }
      end
    end
  end
end
