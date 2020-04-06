require "../waf"
require "../reports/report"

module Wafalyzer
  class AnYu < Waf
    def name : String
      "AnYu (AnYu Technologies)"
    end

    CONTENTS = {
      {regex: /anyu.{0,10}?the green channel/},
      {regex: /your access has been intercepted by anyu/},
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
