require "../waf"
require "../reports/report"

module Wafalyzer
  class Airlock < Waf
    def name : String
      "Airlock (Phion/Ergon)"
    end

    CONTENTS = {
      {regex: /server detected a syntax error in your request/},
    }

    COOKIES = {
      {regex: /^al[_-]?(sess|lb)=/},
    }

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      CONTENTS.each do |schema|
        issue.content schema if content(responses, schema[:regex])
      end
      COOKIES.each do |schema|
        issue.content schema if content(responses, schema[:regex])
      end
      issue
    end
  end
end
