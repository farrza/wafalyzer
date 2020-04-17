require "json"
require "http"

module Wafalyzer
  class Builder
    # :TODO Handle if user tries to overwrite existing WAFs
    def self.new(name : String, manufacturer : String, website : String, user : String)
      # Validate user URL

      puts "[*] Started adding new WAF"
      puts "[*] WAF name: \e[36m#{name}\e[0m"
      puts "[*] WAF manufacturer: \e[36m#{manufacturer}\e[0m" if !manufacturer.empty?
      puts "[*] WAF website: \e[36m#{website}\e[0m" if !website.empty?
      puts "[*] Example user of the WAF: \e[36m#{user}\e[0m"

      directory = __DIR__ + "/wafs/"
      file_name = name.downcase + ".json"

      puts "[*] Sending\e[36m normal\e[0m request"
      normal_response = HTTP::Client.get(user)

      puts "[*] Sending\e[36m attack\e[0m request"
      attack_response = HTTP::Client.get(user + "?" + QUERY)

      puts "[*] Generating\e[36m #{file_name}\e[0m ..."

      file = File.new(directory + file_name, mode = "w+")

      JSON.build(file, 2) do |json|
        json.object do
          json.field "name", name
          json.field "manufacturer", manufacturer
          json.field "website", website

          json.field "fingerprints" do
            json.object do
              json.field "headers" do
                json.object do
                end
              end

              json.field "contents" do
                json.array do
                end
              end

              json.field "cookies" do
                json.array do
                end
              end

              json.field "statuses" do
                json.array do
                end
              end

              json.field "reasons" do
                json.array do
                end
              end
            end

            json.field "spec" do
              json.object do
                json.field "user", user
                json.field "responses" do
                  json.object do
                    json.field "normal" do
                      json.object do
                        json.field "headers" do
                          json.object do
                            normal_response.headers.to_h.each do |key, array|
                              array.each do |string|
                                json.field "#{key}", "#{string}"
                              end
                            end
                          end
                        end

                        json.field "body", ""
                        json.field "status", normal_response.status_code
                        json.field "reason", normal_response.status_message
                      end
                    end
                    json.field "attack" do
                      json.object do
                        json.field "headers" do
                          json.object do
                            attack_response.headers.to_h.each do |key, array|
                              array.each do |string|
                                json.field "#{key}", "#{string}"
                              end
                            end
                          end
                        end

                        json.field "body", ""
                        json.field "status", attack_response.status_code
                        json.field "reason", attack_response.status_message
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      file.close

      puts "\e[36m[✔] Done\e[0m"
      puts "\n\n"
      puts "[!] Don't forget the following:"
      puts "- Add the\e[36m manufacturer's name\e[0m in \e[36m#{file_name}\e[0m" if manufacturer.empty?
      puts "- Add the\e[36m manufacturer's website\e[0m in \e[36m#{file_name}\e[0m" if website.empty?
      puts "- Add the\e[36m fingerprints\e[0m expected to be found at the users of \e[36m#{name}\e[0m"
      puts "- Add \e[36m#{file_name}\e[0m to WAF_FILES in wafs.cr"
    end
  end
end
