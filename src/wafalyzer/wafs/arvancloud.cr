require "../waf"
require "../reports/report"

module Wafalyzer
  class ArvanCloud < Waf
    def name : String
      "ArvanCloud (ArvanCloud)"
    end

    HEADERS = {
      {name: "Server", regex: /ArvanCloud/},
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
