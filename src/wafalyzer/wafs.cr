# Register existing WAF-s here
module Wafalyzer
  WAFS = {
    cloudflare: CloudFlare.new,
    cerber:     Cerber.new,
    webknight:  WebKnight.new,
  }
end
