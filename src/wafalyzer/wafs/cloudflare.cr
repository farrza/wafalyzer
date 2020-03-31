require "../waf"

module Wafalyzer
  class CloudFlare < Waf
    def name
      "CloudFlare"
    end

    HEADERS = {
      {name: "server", regex: /cloudflare/},
      {name: "cf-ray", regex: /[a-z0-9]{16}-BUD/},
      {name: "cf-cache-status", regex: /^HIT$|^MISS$|^EXPIRED$|^STALE$|^BYPASS$|^REVALIDATED$|^UPDATING$|^DYNAMIC$/},
      {name: "expect-ct", regex: /report-uri="https:\/\/report-uri\.cloudflare\.com\/cdn-cgi\/beacon\/expect-ct/},
    }

    COOKIES = {
      {name: "__cfduid"},
    }

    def detect(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      HEADERS.each do |schema|
        return true if header(responses, schema[:name], schema[:regex])
      end
      COOKIES.each do |schema|
        return true if cookie(responses, schema[:name])
      end
      false
    end
  end
end
