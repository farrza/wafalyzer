require "../waf"
require "../reports/report"

module Wafalyzer
  class CloudFlare < Waf
    def name : String
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

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      HEADERS.each do |schema|
        issue.header schema if header(responses, schema[:name], schema[:regex])
      end
      COOKIES.each do |schema|
        issue.cookie schema if cookie(responses, schema[:name])
      end
      issue
    end
  end
end
