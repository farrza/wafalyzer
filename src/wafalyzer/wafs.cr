# Register existing WAF-s here
module Wafalyzer
  WAFS = {
    aesecure:   AeSecure.new,
    airee:      Airee.new,
    airlock:    Airlock.new,
    alertlogic: AlertLogic.new,
    aliyundun:  AliYunDun.new,
    anquanbao:  Anquanbao.new,
    anyu:       AnYu.new,
    approach:   Approach.new,
    armor:      Armor.new,
    aspa:       Aspa.new,
    aspnetgen:  AspNetGen.new,
    astra:      Astra.new,      # Verified
    aws:        AWS.new,        # Verified
    azion:      Azion.new,      # Verified
    arvancloud: ArvanCloud.new, # Verified
    cloudflare: CloudFlare.new, # Verified
    cerber:     Cerber.new,     # Verified
    webknight:  WebKnight.new,  # Verified
  }
end
