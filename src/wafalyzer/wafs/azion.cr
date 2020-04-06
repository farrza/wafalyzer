require "../waf"
require "../reports/report"

module Wafalyzer
  class Azion < Waf
    def name : String
      "AzionCDN (AzionCDN)"
    end

    HEADERS = {
      {name: "Server", regex: /Azion([-_]CDN)?/},
    }

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      HEADERS.each do |schema|
        issue.header schema if header(responses, schema[:name], schema[:regex])
      end
      issue
    end
  end
end
