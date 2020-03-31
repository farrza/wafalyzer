require "../spec_helper.cr"

class WebKnightSpec < WafSpec
  def target
    "https://www.aqtronix.com/"
  end

  def waf
    Wafalyzer::WebKnight.new
  end

  def responses
    {
      normal: HTTP::Client.get(target),
      attack: HTTP::Client.get(target + "?" + QUERY),
    }
  end

  def run
    @logger.info("Spec started for #{waf.name}")
    describe Wafalyzer::WebKnight do
      it "detects #{waf.name} WAF" do
        waf.detect(responses).should be_true
        @logger.info("Success for #{waf.name}")
      end
    end
  end
end
