require "../waf"
require "../reports/report"

module Wafalyzer
  class Approach < Waf
    def name : String
      "Approach (Approach)"
    end

    CONTENTS = {
      {regex: /approach.{0,10}?web application (firewall|filtering)/},
      {regex: /approach.{0,10}?infrastructure team/},
    }

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      CONTENTS.each do |schema|
        issue.content schema if content(responses, schema[:regex])
      end
      issue
    end
  end
end
