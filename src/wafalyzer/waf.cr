require "./reports/issue"

module Wafalyzer
  abstract class Waf
    abstract def name : String
    abstract def analyze(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response))

    def header(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response), name : String, regex : Regex, attack : Bool = false) : Bool
      response = attack ? responses[:attack] : responses[:normal]
      if value = response.headers[name]?
        return true if regex.match(value)
      end
      false
    end

    def content(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response), regex : Regex, attack : Bool = true) : Bool
      response = attack ? responses[:attack] : responses[:normal]
      if response.body?
        return true if regex.match(response.body)
      end
      false
    end

    def cookie(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response), regex : Regex, attack : Bool = false) : Bool
      response = attack ? responses[:attack] : responses[:normal]
      response.cookies.to_h.each_key do |cookie|
        return true if regex.match(cookie)
      end
      false
    end

    def status(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response), code : Int, attack : Bool = true) : Bool
      response = attack ? responses[:attack] : responses[:normal]
      return true if response.status_code == code
      false
    end

    def reason(responses : NamedTuple(normal: HTTP::Client::Response, attack: HTTP::Client::Response), reason : String, attack : Bool = true) : Bool
      response = attack ? responses[:attack] : responses[:normal]
      return true if response.status_message == reason
      false
    end
  end
end
