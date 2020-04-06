require "../waf"
require "../reports/report"

module Wafalyzer
  class Aspa < Waf
    def name : String
      "ASPA Firewall (ASPA Engineering Co.)"
    end

    HEADERS = {
      {name: "Server", regex: /ASPA[\-_]?WAF/},
      {name: "ASPA-Cache-Status", regex: /.+?/},
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
