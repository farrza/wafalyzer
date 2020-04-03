require "../waf"
require "../reports/report"

module Wafalyzer
  class AeSecure < Waf
    def name : String
      "aeSecure (aeSecure)"
    end

    HEADERS = {
      {name: "aeSecure-code", regex: /.+?/},
    }

    CONTENTS = {
      {regex: /aesecure_denied\.png/},
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
