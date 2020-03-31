require "../spec_helper.cr"

class CloudFlareSpec < WafSpec
  def target
    "https://www.cloudflare.com/"
  end

  def waf
    Wafalyzer::CloudFlare.new
  end

  def responses
    {
      normal: HTTP::Client.get(target),
      attack: HTTP::Client.get(target + "?" + QUERY),
    }
  end

  def run
    @logger.info("Spec started for #{waf.name}")
    describe Wafalyzer::CloudFlare do
      it "detects #{waf.name} WAF" do
        waf.detect(responses).should be_true
        @logger.info("Success for #{waf.name}")
      end
    end
  end
end
