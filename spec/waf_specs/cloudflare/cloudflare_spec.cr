require "../../spec_helper.cr"
require "./responses/*"

class CloudFlareSpec < WafSpec
  def target
    "https://www.cloudflare.com/"
  end

  def waf
    Wafalyzer::CloudFlare.new
  end

  def responses
    {
      normal: normal_response,
      attack: attack_response,
    }
  end

  def run
    @logger.info("Spec started for #{waf.name}")
    describe Wafalyzer::CloudFlare do
      it "detects #{waf.name} WAF" do
        waf.analyze(responses).positive?.should be_true
        @logger.info("Success for #{waf.name}")
      end
    end
  end
end
