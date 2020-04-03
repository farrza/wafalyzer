require "../waf"
require "../reports/report"

module Wafalyzer
  class AliYunDun < Waf
    def name : String
      "AliYunDun (Alibaba Cloud Computing)"
    end

    CONTENTS = {
      {regex: /error(s)?\.aliyun(dun)?\.(com|net)?/},
      {regex: /cdn\.aliyun(cs)?\.com/},
    }

    COOKIES = {
      {regex: /^aliyungf_tc=/},
    }

    STATUSES = {
      {code: 405},
    }

    def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      issue = Issue.new
      issue.name = name

      CONTENTS.each do |schema|
        issue.content schema if content(responses, schema[:regex])
      end
      COOKIES.each do |schema|
        issue.cookie schema if cookie(responses, schema[:regex])
      end
      STATUSES.each do |schema|
        issue.status schema if status(responses, schema[:code])
      end
      issue
    end
  end
end
