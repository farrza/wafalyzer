require "baked_file_system"
require "./wafparser"

# Register existing WAF-s here
module Wafalyzer
  class FileStorage
    extend BakedFileSystem

    bake_folder "./wafs/"
  end

  WAF_FILES = {
    "arvancloud.json",
    "cloudflare.json",
    "webknight.json",
    "wpcerber.json",
  }

  {% begin %}
    WAF_LIBRARY = {
      {% for file in WAF_FILES%}
        {{file}} => WafParser.parse(FileStorage.get({{file}}).gets_to_end),
      {% end %}
    }
  {% end %}
end



