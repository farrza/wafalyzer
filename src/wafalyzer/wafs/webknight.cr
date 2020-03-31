require "../waf"

module Wafalyzer
  class WebKnight < Waf
    def name
      "WebKnight (AQTRONIX)"
    end

    CONTENTS = {
      {regex: /WebKnight Application Firewall Alert/},
      {regex: /What is webknight\?/},
      {regex: /AQTRONIX WebKnight is an application firewall/},
      {regex: /WebKnight will take over and protect/},
      {regex: /aqtronix\.com\/WebKnight/},
      {regex: /AQTRONIX.{0,10}?WebKnight/},
    }

    STATUSES = {
      {code: 999},
      {code: 404}, # POTENTIAL FP TRIGGER
    }

    REASONS = {
      {reason: "No Hacking"},
      {reason: "Hack Not Found"},
    }

    def detect(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      CONTENTS.each do |schema|
        return true if content(responses, schema[:regex])
      end
      STATUSES.each do |schema|
        return true if status(responses, schema[:code])
      end
      REASONS.each do |schema|
        return true if reason(responses, schema[:reason])
      end
      false
    end
  end
end
