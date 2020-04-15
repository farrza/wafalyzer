require "json"
require "./waf"

class WafParser
  # :TODO handle file structure validation
  def self.parse(path : Path)
    json = File.open(path) do |file|
      JSON.parse(file)
    end

    name = json["name"].as_s

    manufacturer = json["manufacturer"].as_s

    website = json["website"].as_s

    fingerprints = json["fingerprints"].as_h

    fingerprints_final = {
      headers:  self.to_h_of_s_r(fingerprints["headers"]),
      contents: self.to_a_of_r(fingerprints["contents"]),
      cookies:  self.to_a_of_r(fingerprints["cookies"]),
      statuses: self.to_a_of_i(fingerprints["statuses"]),
      reasons:  self.to_a_of_s(fingerprints["reasons"]),
    }

    responses = json["spec"]["responses"].as_h

    normal_response = {
      headers: self.to_h_of_s_s(responses["normal"]["headers"]),
      body:    responses["normal"]["body"].to_s,
      status:  responses["normal"]["status"].as_i,
      reason:  responses["normal"]["reason"].to_s,
    }

    attack_response = {
      headers: self.to_h_of_s_s(responses["attack"]["headers"]),
      body:    responses["attack"]["body"].to_s,
      status:  responses["attack"]["status"].as_i,
      reason:  responses["attack"]["reason"].to_s,
    }

    yield waf = Wafalyzer::Waf.new(
      name,
      manufacturer,
      website,
      fingerprints_final,
      self.build_response(normal_response),
      self.build_response(attack_response)
    )
  end

  def self.build_response(
    structure : NamedTuple(
      headers: Hash(String, String),
      body: String,
      status: Int,
      reason: String,
    )
  )
    headers = HTTP::Headers.new

    structure[:headers].each do |key, value|
      headers.add(key, value)
    end

    status = HTTP::Status.new(structure[:status])

    status_message = structure[:reason]

    body = structure[:body]

    response = HTTP::Client::Response.new(
      status,
      body,
      headers,
      status_message
    )
  end

  def self.to_i(structure : JSON::Any)
    structure.as_a.each do |element|
      return element.to_i
    end
  end

  def self.to_h_of_s_s(structure : JSON::Any)
    hash = Hash(String, String).new
    structure.as_h.each do |key, value|
      hash[key] = value.as_s
    end
    hash
  end

  def self.to_h_of_s_r(structure : JSON::Any)
    hash = Hash(String, Regex).new
    structure.as_h.each do |key, value|
      hash[key] = Regex.new(value.as_s)
    end
    hash
  end

  def self.to_a_of_r(structure : JSON::Any)
    array = Array(Regex).new
    structure.as_a.each do |element|
      array << Regex.new(element.as_s)
    end
    array
  end

  def self.to_a_of_i(structure : JSON::Any)
    array = Array(Int32).new
    structure.as_a.each do |element|
      array << element.as_i
    end
    array
  end

  def self.to_a_of_s(structure : JSON::Any)
    array = Array(String).new
    structure.as_a.each do |element|
      array << element.as_s
    end
    array
  end
end
