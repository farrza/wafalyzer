# Register existing WAF-s here
module Wafalyzer
  WAFS = {
    aesecure:   AeSecure.new,
    airee:      Airee.new,
    airlock:    Airlock.new,
    alertlogic: AlertLogic.new,
    aliyundun:  AliYunDun.new,
    cloudflare: CloudFlare.new, # Verified
    cerber:     Cerber.new,     # Verified
    webknight:  WebKnight.new,  # Verified
  }
end
