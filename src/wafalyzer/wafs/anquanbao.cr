require "../waf"
require "../reports/report"

module Wafalyzer
  class Anquanbao < Waf
    def name : String
      "Anquanbao (Anquanbao)"
    end

    HEADERS = {
      {name: "X-Powered-By-Anquanbao", regex: /.+?/},
    }

    CONTENTS = {
      {regex: /aqb_cc\/error\//},
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
