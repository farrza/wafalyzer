require "../spec_helper.cr"

class ArvanCloudSpec < WafSpec
  def target
    "https://www.arvancloud.com/"
  end

  def waf
    Wafalyzer::ArvanCloud.new
  end

  def responses
    {
      normal: HTTP::Client.get(target),
      attack: HTTP::Client.get(target + "?" + QUERY),
    }
  end

  def run
    @logger.info("Spec started for #{waf.name}")
    describe Wafalyzer::ArvanCloud do
      it "detects #{waf.name} WAF" do
        waf.analyze(responses).positive?.should be_true
        @logger.info("Success for #{waf.name}")
      end
    end
  end
end
