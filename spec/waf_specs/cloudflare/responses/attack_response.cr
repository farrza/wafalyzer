def attack_response
  hash = {
    "date"            => "Fri, 10 Apr 2020 11:38:35 GMT",
    "content-type"    => "text/html; charset=utf-8",
    "cache-control"   => "max-age=15",
    "expires"         => "Fri, 10 Apr 2020 11:38:50 GMT",
    "x-frame-options" => "SAMEORIGIN",
    "expect-ct"       => "max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"",
    "server"          => "cloudflare",
    "cf-ray"          => "81c2eb4bf65d413-BUD",
    "alt-svc"         => "\"h3-27=\":443\"; ma=86400, h3-25=\":443\"; ma=86400, h3-24=\":443\"; ma=86400, h3-23=\":443\"; ma=86400",
  }

  # Expected headers
  headers = HTTP::Headers.new

  hash.each do |key, value|
    headers.add(key, value)
  end

  # Expected status
  status = HTTP::Status.new(403)

  # Expected reason
  status_message = ""

  # Expected body
  body = "\n" +
         "<!DOCTYPE html>\n" +
         "<!--[if lt IE 7]> <html class=\"no-js ie6 oldie\" lang=\"en-US\"> <![endif]-->\n" +
         "<!--[if IE 7]>    <html class=\"no-js ie7 oldie\" lang=\"en-US\"> <![endif]-->\n" +
         "<!--[if IE 8]>    <html class=\"no-js ie8 oldie\" lang=\"en-US\"> <![endif]-->\n" +
         "<!--[if gt IE 8]><!--> <html class=\"no-js\" lang=\"en-US\"> <!--<![endif]-->\n" +
         "<head>\n" +
         "<title>Attention Required! | Cloudflare</title>\n" +
         "<meta charset=\"UTF-8\" />\n" +
         "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n" +
         "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\" />\n" +
         "<meta name=\"robots\" content=\"noindex, nofollow\" />\n" +
         "<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,maximum-scale=1\" />\n" +
         "<link rel=\"stylesheet\" id=\"cf_styles-css\" href=\"/cdn-cgi/styles/cf.errors.css\" type=\"text/css\" media=\"screen,projection\" />\n" +
         "<!--[if lt IE 9]><link rel=\"stylesheet\" id='cf_styles-ie-css' href=\"/cdn-cgi/styles/cf.errors.ie.css\" type=\"text/css\" media=\"screen,projection\" /><![endif]-->\n" +
         "<style type=\"text/css\">body{margin:0;padding:0}</style>\n" +
         "\n" +
         "\n" +
         "<!--[if gte IE 10]><!--><script type=\"text/javascript\" src=\"/cdn-cgi/scripts/zepto.min.js\"></script><!--<![endif]-->\n" +
         "<!--[if gte IE 10]><!--><script type=\"text/javascript\" src=\"/cdn-cgi/scripts/cf.common.js\"></script><!--<![endif]-->\n" +
         "\n" +
         "\n" +
         "\n" +
         "</head>\n" +
         "<body>\n" +
         "  <div id=\"cf-wrapper\">\n" +
         "    <div class=\"cf-alert cf-alert-error cf-cookie-error\" id=\"cookie-alert\" data-translate=\"enable_cookies\">Please enable cookies.</div>\n" +
         "    <div id=\"cf-error-details\" class=\"cf-error-details-wrapper\">\n" +
         "      <div class=\"cf-wrapper cf-header cf-error-overview\">\n" +
         "        <h1 data-translate=\"block_headline\">Sorry, you have been blocked</h1>\n" +
         "        <h2 class=\"cf-subheadline\"><span data-translate=\"unable_to_access\">You are unable to access</span> www.cloudflare.com</h2>\n" +
         "      </div><!-- /.header -->\n" +
         "\n" +
         "      <div class=\"cf-section cf-highlight\">\n" +
         "        <div class=\"cf-wrapper\">\n" +
         "          <div class=\"cf-screenshot-container cf-screenshot-full\">\n" +
         "            \n" +
         "              <span class=\"cf-no-screenshot error\"></span>\n" +
         "            \n" +
         "          </div>\n" +
         "        </div>\n" +
         "      </div><!-- /.captcha-container -->\n" +
         "\n" +
         "      <div class=\"cf-section cf-wrapper\">\n" +
         "        <div class=\"cf-columns two\">\n" +
         "          <div class=\"cf-column\">\n" +
         "            <h2 data-translate=\"blocked_why_headline\">Why have I been blocked?</h2>\n" +
         "\n" +
         "            <p data-translate=\"blocked_why_detail\">This website is using a security service to protect itself from online attacks. The action you just performed triggered the security solution. There are several actions that could trigger this block including submitting a certain word or phrase, a SQL command or malformed data.</p>\n" +
         "          </div>\n" +
         "\n" +
         "          <div class=\"cf-column\">\n" +
         "            <h2 data-translate=\"blocked_resolve_headline\">What can I do to resolve this?</h2>\n" +
         "\n" +
         "            <p data-translate=\"blocked_resolve_detail\">You can email the site owner to let them know you were blocked. Please include what you were doing when this page came up and the Cloudflare Ray ID found at the bottom of this page.</p>\n" +
         "          </div>\n" +
         "        </div>\n" +
         "      </div><!-- /.section -->\n" +
         "\n" +
         "      <div class=\"cf-error-footer cf-wrapper\">\n" +
         "  <p>\n" +
         "    <span class=\"cf-footer-item\">Cloudflare Ray ID: <strong>581c2eb4bf65d413</strong></span>\n" +
         "    <span class=\"cf-footer-separator\">&bull;</span>\n" +
         "    <span class=\"cf-footer-item\"><span>Your IP</span>: 2a02:27b0:4400:8110:f577:2fa5:399c:650e</span>\n" +
         "    <span class=\"cf-footer-separator\">&bull;</span>\n" +
         "    <span class=\"cf-footer-item\"><span>Performance &amp; security by</span> <a href=\"https://www.cloudflare.com/5xx-error-landing?utm_source=error_footer\" id=\"brand_link\" target=\"_blank\">Cloudflare</a></span>\n" +
         "    \n" +
         "    <span class=\"cf-footer-separator\">&bull;</span>\n" +
         "    <span class=\"cf-footer-item\">\n" +
         "      <select id=\"lang-selector\">\n" +
         "        <option value=\"\">Select a Language</option>\n" +
         "        <option value=\"en\">English</option>\n" +
         "        <option value=\"es\">Español</option>\n" +
         "      </select>\n" +
         "    </span>\n" +
         "    \n" +
         "  </p>\n" +
         "</div><!-- /.error-footer -->\n" +
         "\n" +
         "\n" +
         "    </div><!-- /#cf-error-details -->\n" +
         "  </div><!-- /#cf-wrapper -->\n" +
         "\n" +
         "  <script type=\"text/javascript\">\n" +
         "  window._cf_translation = {};\n" +
         "  window._cf_translation.locale = 'en';\n" +
         "  window._cf_translation.blobs = {};\n" +
         "</script>\n" +
         "\n" +
         "</body>\n" +
         "</html>"

  response = HTTP::Client::Response.new(
    status,
    body,
    headers,
    status_message
  )
end
