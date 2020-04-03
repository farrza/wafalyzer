require "../waf"
require "../reports/report"

module Wafalyzer
  class Airee < Waf
    def name : String
      "AireeCDN (Airee)"
    end

    HEADERS = {
      {name: "Server", regex: /Airee/},
      {name: "X-Cache", regex: /(\w+\.)?airee\.cloud/},
    }

    CONTENTS = {
      {regex: /airee\.cloud/},
    }

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      HEADERS.each do |schema|
        issue.header schema if header(responses, schema[:name], schema[:regex])
      end
      CONTENTS.each do |schema|
        issue.content schema if content(responses, schema[:regex])
      end
      issue
    end
  end
end
