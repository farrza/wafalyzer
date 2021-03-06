require "./wafparser"

# Register existing WAF-s here
module Wafalyzer
  WAF_FILES = {
    "arvancloud.json",
    "cloudflare.json",
    "webknight.json",
    "wpcerber.json",
  }

  WAF_LIBRARY = Hash(String, Waf).new

  directory = __DIR__ + "/wafs/"

  WAF_FILES.each do |waf_file|
    path = Path.new(directory + waf_file)

    waf = WafParser.parse(path)

    if waf
      WAF_LIBRARY[waf.name.downcase] = waf
    end
  end
end
