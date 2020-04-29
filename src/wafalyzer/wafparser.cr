require "json"
require "./waf"

class WafParser
  # :TODO handle file structure validation
  def self.parse_json(path : Path)
    json = File.open(path) do |file|
      JSON.parse(file)
    end
  end

  def self.parse(path : Path)
    json = self.parse_json(path)

    if self.valid(json)
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

      return waf = Wafalyzer::Waf.new(
        name,
        manufacturer,
        website,
        fingerprints_final,
        self.build_response(normal_response),
        self.build_response(attack_response)
      )
    else
      puts "Invalid file format for #{path}"
    end
  end

  def self.valid(json : JSON::Any)
    json = json.as_h
    return false unless json.has_key?("name")
    return false unless json.has_key?("manufacturer")
    return false unless json.has_key?("website")
    return false unless json.has_key?("fingerprints")

    fingerprints = json["fingerprints"].as_h
    return false unless fingerprints.has_key?("headers")
    return false unless fingerprints.has_key?("contents")
    return false unless fingerprints.has_key?("cookies")
    return false unless fingerprints.has_key?("statuses")
    return false unless fingerprints.has_key?("reasons")

    return false unless json.has_key?("spec")

    spec = json["spec"].as_h
    return false unless spec.has_key?("responses")

    responses = spec["responses"].as_h

    return false unless responses.has_key?("normal")

    normal = responses["normal"].as_h
    return false unless normal.has_key?("headers")
    return false unless normal.has_key?("body")
    return false unless normal.has_key?("status")
    return false unless normal.has_key?("reason")

    return false unless responses.has_key?("attack")

    attack = responses["attack"].as_h
    return false unless attack.has_key?("headers")
    return false unless attack.has_key?("body")
    return false unless attack.has_key?("status")
    return false unless attack.has_key?("reason")

    true
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
