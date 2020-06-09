require "spec"
require "log"
require "../src/wafalyzer/wafs"
require "../src/wafalyzer/wafparser"

module Wafalyzer
  ::Log.builder.bind("*", :info, ::Log::IOBackend.new)

  describe Waf do
    WAF_LIBRARY.each_value do |waf|
      if waf
        it "detects #{waf.name} WAF" do
          waf.test.should be_true
          Log.info { "#{waf.name} loaded successfully" }
        end
      end
    end
  end

  describe WafParser do
    it "has valid json format" do
      path = Path.new(__DIR__ + "/resources/valid_waf.json")
      json = WafParser.parse_json(path)
      WafParser.parse(path).should be_truthy
      Log.info { "WafParser works properly" }
    end
  end
end
