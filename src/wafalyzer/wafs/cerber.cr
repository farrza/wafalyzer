require "../waf"

module Wafalyzer
  class Cerber < Waf
    def name : String
      "WP Cerber Security (Cerber Tech)"
    end

    CONTENTS = {
      {regex: /your request looks suspicious or similar to automated/},
      {regex: /our server stopped processing your request/},
      {regex: /We.re sorry.{0,10}?you are not allowed to proceed/},
      {regex: /requests from spam posting software/},
      {regex: /<title>403 Access Forbidden/},
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
