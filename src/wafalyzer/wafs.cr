require "./wafparser"

# Register existing WAF-s here
module Wafalyzer
  WAF_FILES = {
    "cloudflare.json",
    "webknight.json",
    "wpcerber.json",
  }

  WAF_LIBRARY = Hash(String, Waf).new

  directory = __DIR__ + "/wafs/"

  WAF_FILES.each do |waf_file|
    path = Path.new(directory + waf_file)

    WafParser.parse(path) do |waf|
      WAF_LIBRARY[waf.name.downcase] = waf
    end
  end
end
