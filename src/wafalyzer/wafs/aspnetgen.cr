require "../waf"
require "../reports/report"

module Wafalyzer
  class AspNetGen < Waf
    def name : String
      "ASP.NET Generic (Microsoft)"
    end

    CONTENTS = {
      {regex: /iis (\d+.)+?detailed error/},
      {regex: /potentially dangerous request querystring/},
      {regex: /application error from being viewed remotely (for security reasons)?/},
      {regex: /An application error occurred on the server/},
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
