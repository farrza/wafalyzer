require "../waf"
require "../reports/report"

module Wafalyzer
  class AWS < Waf
    def name : String
      "AWS Elastic Load Balancer (Amazon)"
    end

    HEADERS = {
      {name: "Server", regex: /aws.?elb/}, # REQUIRES ATTACK
      {name: "X-AMZ-ID", regex: /.+?/},
      {name: "X-AMZ-Request-ID", regex: /.+?/},
    }

    COOKIES = {
      {regex: /__cfduid/},
    }

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      HEADERS.each do |schema|
        issue.header schema if header(responses, schema[:name], schema[:regex])
      end
      COOKIES.each do |schema|
        issue.cookie schema if cookie(responses, schema[:regex])
      end
      issue
    end
  end
end
