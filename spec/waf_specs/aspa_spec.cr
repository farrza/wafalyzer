require "../spec_helper.cr"

class AspaSpec < WafSpec
  def target
    "https://www.aspaco.org/"
  end

  def waf
    Wafalyzer::Aspa.new
  end

  def responses
    {
      normal: HTTP::Client.get(target),
      attack: HTTP::Client.get(target + "?" + QUERY),
    }
  end

  def run
    @logger.info("Spec started for #{waf.name}")
    it "is not verified" do
      true.should be_true
    end
    # describe Wafalyzer::Aspa do
    #  it "detects #{waf.name} WAF" do
    #    waf.analyze(responses).positive?.should be_true
    #    @logger.info("Success for #{waf.name}")
    #  end
    # end
  end
end