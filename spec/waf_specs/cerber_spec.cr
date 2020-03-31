require "../spec_helper.cr"

class CerberSpec < WafSpec
  def target
    "https://www.wpcerber.com/"
  end

  def waf
    Wafalyzer::Cerber.new
  end

  def responses
    {
      normal: HTTP::Client.get(target),
      attack: HTTP::Client.get(target + "?" + QUERY),
    }
  end

  def run
    @logger.info("Spec started for #{waf.name}")
    describe Wafalyzer::Cerber do
      it "detects #{waf.name} WAF" do
        waf.detect(responses).should be_true
        @logger.info("Success for #{waf.name}")
      end
    end
  end
end
