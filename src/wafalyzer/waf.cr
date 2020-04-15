require "json"
require "http"

require "./reports/report"

module Wafalyzer
  class Waf
    @name : String
    @manufacturer : String
    @website : String
    @fingerprints : NamedTuple(
      headers: Hash(String, Regex),
      contents: Array(Regex),
      cookies: Array(Regex),
      statuses: Array(Int32),
      reasons: Array(String),
    )

    @normal_response : HTTP::Client::Response
    @attack_response : HTTP::Client::Response

    @normal_response_example : HTTP::Client::Response
    @attack_response_example : HTTP::Client::Response

    def initialize(
      name : String,
      manufacturer : String,
      website : String,
      fingerprints : NamedTuple(
        headers: Hash(String, Regex),
        contents: Array(Regex),
        cookies: Array(Regex),
        statuses: Array(Int32),
        reasons: Array(String),
      ),
      normal_response_example : HTTP::Client::Response,
      attack_response_example : HTTP::Client::Response
    )
      @name = name
      @manufacturer = manufacturer
      @website = website
      @fingerprints = fingerprints
      headers = HTTP::Headers.new

      status = HTTP::Status.new(200)

      status_message = ""

      body = ""

      empty_response = HTTP::Client::Response.new(
        status,
        body,
        headers,
        status_message
      )
      @normal_response = empty_response
      @attack_response = empty_response
      @normal_response_example = normal_response_example
      @attack_response_example = attack_response_example
    end

    def name
      @name
    end

    def <<(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))
      @normal_response = responses[:normal]
      @attack_response = responses[:attack]
    end

    def detected?
      issue = Issue.new
      issue.name = name

      @fingerprints[:headers].each do |name, regex|
        header = {name: name, regex: regex}
        issue.header header if check_header(name, regex)
      end

      @fingerprints[:contents].each do |regex|
        content = {regex: regex}
        issue.content content if check_content(regex)
      end

      @fingerprints[:cookies].each do |regex|
        cookie = {regex: regex}
        issue.cookie cookie if check_cookie(regex)
      end

      @fingerprints[:statuses].each do |code|
        status = {code: code}
        issue.status status if check_status(code)
      end

      @fingerprints[:reasons].each do |reason|
        status_message = {reason: reason}
        issue.reason status_message if check_reason(reason)
      end
      issue
    end

    def check_header(name : String, regex : Regex, attack_response : HTTP::Client::Response = @attack_response, normal_response : HTTP::Client::Response = @normal_response, attack : Bool = false)
      response = attack ? attack_response : normal_response
      if value = response.headers[name]?
        return true if regex.match(value)
      end
      false
    end

    def check_content(regex : Regex, attack_response : HTTP::Client::Response = @attack_response, normal_response : HTTP::Client::Response = @normal_response, attack : Bool = true)
      response = attack ? attack_response : normal_response
      if response.body?
        return true if regex.match(response.body)
      end
      false
    end

    def check_cookie(regex : Regex, attack_response : HTTP::Client::Response = @attack_response, normal_response : HTTP::Client::Response = @normal_response, attack : Bool = false)
      response = attack ? attack_response : normal_response
      response.cookies.to_h.each_key do |cookie|
        return true if regex.match(cookie)
      end
      false
    end

    def check_status(code : Int32, attack_response : HTTP::Client::Response = @attack_response, normal_response : HTTP::Client::Response = @normal_response, attack : Bool = true)
      response = attack ? attack_response : normal_response
      return true if response.status_code == code
      false
    end

    def check_reason(reason : String, attack_response : HTTP::Client::Response = @attack_response, normal_response : HTTP::Client::Response = @normal_response, attack : Bool = true)
      response = attack ? attack_response : normal_response
      return true if response.status_message == reason
      false
    end

    def test
      issue = Issue.new
      issue.name = name

      @fingerprints[:headers].each do |name, regex|
        header = {name: name, regex: regex}
        issue.header header if check_header(name, regex, @normal_response_example, @attack_response_example)
      end

      @fingerprints[:contents].each do |regex|
        content = {regex: regex}
        issue.content content if check_content(regex, @normal_response_example, @attack_response_example)
      end

      @fingerprints[:cookies].each do |regex|
        cookie = {regex: regex}
        issue.cookie cookie if check_cookie(regex, @normal_response_example, @attack_response_example)
      end

      @fingerprints[:statuses].each do |code|
        status = {code: code}
        issue.status status if check_status(code, @normal_response_example, @attack_response_example)
      end

      @fingerprints[:reasons].each do |reason|
        status_message = {reason: reason}
        issue.reason status_message if check_reason(reason, @normal_response_example, @attack_response_example)
      end
      issue.positive?
    end
  end
end
