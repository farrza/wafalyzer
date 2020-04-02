require "../waf"
require "../reports/report"

module Wafalyzer
  class AlertLogic < Waf
    def name : String
      "Alert Logic (Alert Logic)"
    end

    CONTENTS = {
      {regex: /<(title|h\d{1})>requested url cannot be found/},
      {regex: /we are sorry.{0,10}?but the page you are looking for cannot be found/},
      {regex: /back to previous page/},
      {regex: /proceed to homepage/},
      {regex: /reference id/},
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
