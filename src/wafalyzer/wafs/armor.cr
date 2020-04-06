require "../waf"
require "../reports/report"

module Wafalyzer
  class Armor < Waf
    def name : String
      "Armor Defense (Armor)"
    end

    CONTENTS = {
      {regex: /blocked by website protection from armor/},
      {regex: /please create an armor support ticket/},
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
