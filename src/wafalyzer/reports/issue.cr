module Wafalyzer
  class Issue
    property name
    property manufacturer
    property website

    def initialize(@name : String = "", @manufacturer : String = "", @website : String = "")
      @state = false
      @headers = Array(NamedTuple(name: String, regex: Regex)).new
      @contents = Array(NamedTuple(regex: Regex)).new
      @cookies = Array(NamedTuple(regex: Regex)).new
      @statuses = Array(NamedTuple(code: Int32)).new
      @reasons = Array(NamedTuple(reason: String)).new
      @alternative = Array(String).new
    end

    def state
      @state
    end

    def headers
      @headers
    end

    def cookies
      @cookies
    end

    def header(schema : NamedTuple(name: String, regex: Regex))
      @headers << schema
      @state ||= true
    end

    def content(schema : NamedTuple(regex: Regex))
      @contents << schema
      @state ||= true
    end

    def cookie(schema : NamedTuple(regex: Regex))
      @cookies << schema
      @state ||= true
    end

    def status(schema : NamedTuple(code: Int))
      @statuses << schema
      @state ||= true
    end

    def reason(schema : NamedTuple(reason: String))
      @reasons << schema
      @state ||= true
    end

    def alternative(params : String)
      @alternative << params
      @state ||= true
    end

    def positive?
      @state == true
    end

    def negative?
      @state == false
    end
  end
end
