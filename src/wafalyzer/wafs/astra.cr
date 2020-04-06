require "../waf"
require "../reports/report"

module Wafalyzer
  class Astra < Waf
    def name : String
      "Astra (Czar Securities)"
    end

    CONTENTS = {
      {regex: /astrawebsecurity\.freshdesk\.com/},
      {regex: /www\.getastra\.com\/assets\/images\//},
    }

    COOKIES = {
      {regex: /^cz_astra_csrf_cookie/},
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
      issue
    end
  end
end
