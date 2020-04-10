def normal_response
  hash = {
    "date"                      => "Fri, 10 Apr 2020 10:57:25 GMT",
    "content-type"              => "text/html; charset=utf-8",
    "set-cookie"                => "__cfduid=d95b7987c07dcc112ddaec44656f6b2d81586516245; expires=Sun, 10-May-20 10:57:25 GMT; path=/; domain=.www.cloudflare.com; HttpOnly; SameSite=Lax; Secure",
    "cf-ray"                    => "581bf268eafcd40f-BUD",
    "age"                       => "15",
    "cache-control"             => "public, s-max-age=30",
    "etag"                      => "W/\"1d6ef-gzNW8/ztqJXkFl83kw39y9R3pEk\"",
    "strict-transport-security" => "max-age=31536000",
    "vary"                      => "Accept-Encoding",
    "cd-cache-status"           => "HIT",
    "expect-ct"                 => "max-age=604800, report-uri=\"https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct\"",
    "x-content-type-options"    => "nosniff",
    "x-frame-options"           => "SAMEORIGIN",
    "x-xss-protection"          => "1; mode=block",
    "server"                    => "cloudflare",
    "alt-svc"                   => "h3-27=\":443\"; ma=86400, h3-25=\":443\"; ma=86400, h3-24=\":443\"; ma=86400, h3-23=\":443\"; ma=86400",
  }

  # Expected headers
  headers = HTTP::Headers.new

  hash.each do |key, value|
    headers.add(key, value)
  end

  # Expected status
  status = HTTP::Status.new(200)

  # Expected reason
  status_message = ""

  # Expected body
  body = "\n" +
         "<!DOCTYPE html>\n" +
         "<html lang=\"en-us\" itemscope itemtype=\"http://schema.org/Article\">\n" +
         "  <head>\n" +
         "      <script async src=\"https://www.googleoptimize.com/optimize.js?id=GTM-N4JSZJ8\"></script>\n" +
         "\n" +
         "\n" +
         "    <meta charset=\"UTF-8\">\n" +
         "\n" +
         "\n" +
         "    <title>Cloudflare - The Web Performance &amp; Security Company\n" +
         "\n" +
         " | Cloudflare </title>\n" +
         "\n" +
         "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
         "    <meta name=\"description\" content=\"Here at Cloudflare, we make the Internet work the way it should. Offering CDN, DNS, DDoS protection and security, find out how we can help your site.\n" +
         "\">\n" +
         "\n" +
         "\n" +
         "    \n" +
         "  \n" +
         "\n" +
         "    \n" +
         "    <link rel=\"canonical\" href=\"https://www.cloudflare.com/\">\n" +
         "\n" +
         "  \n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"de-de\" href=\"https://www.cloudflare.com/de-de/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es\" href=\"https://www.cloudflare.com/es-es/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-es\" href=\"https://www.cloudflare.com/es-es/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-AR\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-BO\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-CL\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-CO\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-CR\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-EC\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-GY\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-MX\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-PY\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-PE\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-SR\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-UY\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"es-VE\" href=\"https://www.cloudflare.com/es-la/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"fr-fr\" href=\"https://www.cloudflare.com/fr-fr/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"it-it\" href=\"https://www.cloudflare.com/it-it/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"ja-jp\" href=\"https://www.cloudflare.com/ja-jp/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"ko-kr\" href=\"https://www.cloudflare.com/ko-kr/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"pt-br\" href=\"https://www.cloudflare.com/pt-br/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"zh-CN\" href=\"https://www.cloudflare.com/zh-cn/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"zh-Hans-CN\" href=\"https://www.cloudflare.com/zh-cn/\">\n" +
         "\n" +
         "\n" +
         "        <link rel=\"alternate\" hreflang=\"zh-Hant-TW\" href=\"https://www.cloudflare.com/zh-tw/\">\n" +
         "\n" +
         "\n" +
         "\n" +
         "    \n" +
         "    <meta itemprop=\"name\" content=\"Cloudflare - The Web Performance &amp; Security Company\n" +
         "\n" +
         " | Cloudflare \">\n" +
         "    <meta itemprop=\"description\" content=\"Here at Cloudflare, we make the Internet work the way it should. Offering CDN, DNS, DDoS protection and security, find out how we can help your site.\n" +
         "\">\n" +
         "    <meta itemprop=\"image\" content=\"https://www.cloudflare.com/resources/images/slt3lc6tev37/6M2RKpWajAIy2h6kwYAbVd/52ea0afc2052080d6bb766cc4d7b045a/network-map-gradient-165.png\">\n" +
         "    <meta name=\"twitter:card\" content=\"summary\" />\n" +
         "    <meta name=\"twitter:title\" content=\"Cloudflare - The Web Performance &amp; Security Company\n" +
         "\n" +
         " | Cloudflare \">\n" +
         "    <meta name=\"twitter:description\" content=\"Here at Cloudflare, we make the Internet work the way it should. Offering CDN, DNS, DDoS protection and security, find out how we can help your site.\n" +
         "\">\n" +
         "    <meta name=\"twitter:site\" content=\"@cloudflare\">\n" +
         "    <meta name=\"twitter:creator\" content=\"@cloudflare\">\n" +
         "    \n" +
         "    <meta name=\"twitter:image\" content=\"https://www.cloudflare.com/img/cf-twitter-card.png\">\n" +
         "    <meta property=\"og:title\" content=\"Cloudflare - The Web Performance &amp; Security Company\n" +
         "\n" +
         " | Cloudflare \" />\n" +
         "    <meta property=\"og:type\" content=\"article\" />\n" +
         "    <meta property=\"og:url\" content=\"https://www.cloudflare.com/\" />\n" +
         "    \n" +
         "    <meta property=\"og:image\" content=\"https://www.cloudflare.com/resources/images/slt3lc6tev37/6M2RKpWajAIy2h6kwYAbVd/52ea0afc2052080d6bb766cc4d7b045a/network-map-gradient-165.png\" />\n" +
         "    <meta property=\"og:description\" content=\"Here at Cloudflare, we make the Internet work the way it should. Offering CDN, DNS, DDoS protection and security, find out how we can help your site.\n" +
         "\" />\n" +
         "    <meta property=\"og:site_name\" content=\"Cloudflare\" />\n" +
         "    <meta class=\"swiftype\" name=\"language\" data-type=\"string\" content=\"en-us\" />\n" +
         "    <meta class=\"swiftype\" name=\"title\" data-type=\"string\" content=\"Cloudflare - The Web Performance &amp; Security Company\n" +
         "\n" +
         "\" />\n" +
         "    <meta class=\"swiftype\" name=\"description\" data-type=\"string\" content=\"Here at Cloudflare, we make the Internet work the way it should. Offering CDN, DNS, DDoS protection and security, find out how we can help your site.\n" +
         "\" />\n" +
         "    <meta class=\"swiftype\" name=\"url\" data-type=\"enum\" content=\"https://www.cloudflare.com/\" />\n" +
         "\n" +
         "    \n" +
         "    <meta name=\"baidu-site-verification\" content=\"N0CNJSCAk5\" />\n" +
         "\n" +
         "    \n" +
         "    <meta name=\"baidu-site-verification\" content=\"Kj9FQ1BEWh\" />\n" +
         "\n" +
         "    \n" +
         "    <meta name=\"baidu-site-verification\" content=\"OEDgbws38Y\" />\n" +
         "\n" +
         "    \n" +
         "    \n" +
         "    <link rel=\"icon\" type=\"image/x-icon\" href=\"/favicon.ico\"/>\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"57x57\" href=\"/apple-touch-icon-57x57.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"/apple-touch-icon-114x114.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"/apple-touch-icon-72x72.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"/apple-touch-icon-144x144.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"60x60\" href=\"/apple-touch-icon-60x60.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"120x120\" href=\"/apple-touch-icon-120x120.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"76x76\" href=\"/apple-touch-icon-76x76.png\" />\n" +
         "    <link rel=\"apple-touch-icon-precomposed\" sizes=\"152x152\" href=\"/apple-touch-icon-152x152.png\" />\n" +
         "    <link rel=\"icon\" type=\"image/png\" href=\"/favicon-196x196.png\" sizes=\"196x196\" />\n" +
         "    <link rel=\"icon\" type=\"image/png\" href=\"/favicon-96x96.png\" sizes=\"96x96\" />\n" +
         "    <link rel=\"icon\" type=\"image/png\" href=\"/favicon-32x32.png\" sizes=\"32x32\" />\n" +
         "    <link rel=\"icon\" type=\"image/png\" href=\"/favicon-16x16.png\" sizes=\"16x16\" />\n" +
         "    <link rel=\"icon\" type=\"image/png\" href=\"/favicon-128.png\" sizes=\"128x128\" />\n" +
         "    <meta name=\"application-name\" content=\"Cloudflare\"/>\n" +
         "    <meta name=\"msapplication-TileColor\" content=\"#FFFFFF\" />\n" +
         "    <meta name=\"msapplication-TileImage\" content=\"/mstile-144x144.png\" />\n" +
         "    <meta name=\"msapplication-square70x70logo\" content=\"/mstile-70x70.png\" />\n" +
         "    <meta name=\"msapplication-square150x150logo\" content=\"/mstile-150x150.png\" />\n" +
         "    <meta name=\"msapplication-wide310x150logo\" content=\"/mstile-310x150.png\" />\n" +
         "    <meta name=\"msapplication-square310x310logo\" content=\"/mstile-310x310.png\" />\n" +
         "\n" +
         "    \n" +
         "    <noscript><style>.nojs-hide{display: none;}</style></noscript>\n" +
         "    \n" +
         "    <style>.async-hide {opacity: 0 !important}</style>\n" +
         "\n" +
         "      <link rel=\"stylesheet\" href=\"https://assets.www.cloudflare.com/css/cloudflare-4ec08b17be.min.css\">\n" +
         "\n" +
         "    <link rel=\"stylesheet\" href=\"https://assets.www.cloudflare.com/css/modules/pages/page-cms-ed74be7d24.min.css\">\n" +
         "      <link rel=\"stylesheet\" href=\"https://assets.www.cloudflare.com/css/modules/pages/homepage-framework-6e18db3040.min.css\">\n" +
         "    <link rel=\"stylesheet\" href=\"https://assets.www.cloudflare.com/css/modules/pages/homepage-builtforthis-79fead4417.min.css\">\n" +
         "\n" +
         "  \n" +
         "    \n" +
         "\n" +
         "    \n" +
         "\n" +
         "    \n" +
         "    \n" +
         "<script nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\">\n" +
         "  window.CFJS = {\n" +
         "    config: {\n" +
         "      rumEnabled: true,\n" +
         "      env: '/marketing-api',\n" +
         "      availableLanguages: 'en,en-in,en-gb,en-au,en-ca,de-de,es-es,es-la,fr-fr,it-it,ja-jp,ko-kr,pt-br,zh-cn,zh-tw'.split(','),\n" +
         "      excludeMarketo: false,\n" +
         "      marketoEnabled: true,\n" +
         "      bizibleEnabled: true,\n" +
         "      excludeHeapAnalytics: false,\n" +
         "      asyncHide: false,\n" +
         "      remarketingEnabled: false,\n" +
         "      sentryDSN: 'https://bd9df81d859641f39ce626ce2a2cc90d@sentry.io/229513',\n" +
         "      serverLang: \"en-us\",\n" +
         "      isEnglish: true,\n" +
         "      isLocalized: true,\n" +
         "      intlTelInputUtils: '/js/chunk-36d420674cfaa2e2564f.js',\n" +
         "      cookieDomain: \"cloudflare.com\",\n" +
         "      techtargetEnabled: true,\n" +
         "      gtm: {\n" +
         "        disabled: false,\n" +
         "        uaCookieDomain: \".cloudflare.com\",\n" +
         "        uaCodeMarketing_29: \"UA-10218544-29\",\n" +
         "        optimize: \"GTM-N4JSZJ8\",\n" +
         "        uaCodeAdWords: \"AW-819572718\",\n" +
         "        uaCodeAdWordsBI: \"DC-8921596\",\n" +
         "        adWordsConversionCode: \"AW-972248548\",\n" +
         "        adWordsConversionCodeForm: \"AW-836330296\",\n" +
         "        adWordsConversionLabel: \"caqvCO3e32EQ5KvNzwM\",\n" +
         "        adWordsConversionLabelForm: \"-l5JCJnczYgBELjG5Y4D\",\n" +
         "      }\n" +
         "    }\n" +
         "  }\n" +
         "</script>\n" +
         "\n" +
         "    \n" +
         "    <script nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\">(function(w,d,s,l,i){w[l]=w[l]||[];var f=d.getElementsByTagName(s)[0],\n" +
         "    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=\n" +
         "    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);\n" +
         "    })(window,document,'script','dataLayer','GTM-PKQFGQB');</script>\n" +
         "\n" +
         "    <script src=\"https://assets.www.cloudflare.com/js/runtime-72897be4ed4f2c7e97ef.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-3bfc1bbe83e7d61d4553.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-099cae3379383050aa2e.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-ab850bb0a22d5db4b54b.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "    <script src=\"https://assets.www.cloudflare.com/js/chunk-75c2045662f16efff3df.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "\n" +
         "    <script src=\"https://www.cloudflare.com/vendor/onetrust/scripttemplates/otSDKStub.js\" data-document-language=\"true\" type=\"text/javascript\" charset=\"UTF-8\" data-domain-script=\"e34df59b-4a48-4bf9-b2b5-7a4bb09cd231\"></script>\n" +
         "  </head>\n" +
         "  <body class=\"marketing-nojs page-cms\" >\n" +
         "    \n" +
         "    <script src=\"/optimizely/snippet.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "    <noscript><iframe src=\"//www.googletagmanager.com/ns.html?id=GTM-PKQFGQB\"\n" +
         "    height=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\n" +
         "    <!-- End Google Tag Manager (noscript) -->\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "    <header style=\"display:none\" class=\"flash-banner flash-banner--gray flash-banner--not-localized\" data-name=\"not-localized\">\n" +
         "  <section class=\"tile tile--mini-banner hide-mobile\">\n" +
         "    <div class=\"tile__content--1200px\">\n" +
         "      <div class=\"grid--center grid--vertical-center\">\n" +
         "        <h4 class=\"text--white\">This content is currently available in english only. We are constantly working to provide more content in english. Thank you for your patience.</h4>\n" +
         "      </div>\n" +
         "      <div class=\"flash-banner__close_x js-accept-top-nav-mini-flash-banner\"></div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "</header>\n" +
         "\n" +
         "\n" +
         "    \n" +
         "    <script src=\"https://assets.www.cloudflare.com/js/chunk-09265eebf1b893a8d46e.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-a0905cef8b44770d1b9a.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-ebf2d836146c4a8009d5.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "<header class=\"cms-topnav topnav top-nav js-top-nav \">\n" +
         "<nav  class=\"top-nav__upper-bar top-nav__items\">\n" +
         "  <div class=\"top-nav__item-list top-nav__item-list--right\">\n" +
         "\n" +
         "    <span><a class=\"bold\" href=\"https://support.cloudflare.com/\" data-tracking-category=\"mainnav\" data-tracking-action=\"click\" data-tracking-label=\"Support\">Support</a></span>\n" +
         "    <span class=\"header-section-divider\">|</span>\n" +
         "    <span><a href=\"/plans/enterprise/contact/\">Sales:</a></span>\n" +
         "    <a data-i18n-phonenumber href=\"tel:+16503198930\" style=\"display:none\">+1 650 319 8930</a>\n" +
         "    <noscript><a href=\"tel:+16503198930\">+1 650 319 8930</a></noscript>\n" +
         "    <span class=\"header-section-divider\">|</span>\n" +
         "\n" +
         "    <a class=\"header-language-picker js-header-language-picker\"><span class=\"header-language-picker__globe-icon\"></span>English <span class=\"header-language-picker__caret-icon\">▶</span><span class=\"header-language-picker__caret-icon hidden-element\">▼</span></a>\n" +
         "    <div id=\"js-header-language-picker-dropdown\" class=\"js-header-language-picker-dropdown\" style=\"display: none;\">\n" +
         "      <ul class=\"marketing-ul marketing-ul--no-bullets marketing-ul--no-margins-li header-language-picker-dropdown\">\n" +
         "\n" +
         "            <li >\n" +
         "              <a href=\"https://www.cloudflare.com/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"en-us\">English</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/en-gb/\"\n" +
         "                >English (United Kingdom)</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/en-ca/\"\n" +
         "                >English (Canada)</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/en-au/\"\n" +
         "                >English (Australia)</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/en-in/\"\n" +
         "                >English (India)</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/de-de/\"\n" +
         "                >Deutsch</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/es-es/\"\n" +
         "                >Español (España)</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/es-la/\"\n" +
         "                >Español (Latinoamérica)</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/fr-fr/\"\n" +
         "                >Français</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/it-it/\"\n" +
         "                >Italiano</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/ja-jp/\"\n" +
         "                >日本語</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/ko-kr/\"\n" +
         "                >한국어</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/pt-br/\"\n" +
         "                >Português</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/zh-tw/\"\n" +
         "                >繁體中文</a>\n" +
         "            </li>\n" +
         "            <li >\n" +
         "              <a\n" +
         "                href=\"https://www.cloudflare.com/zh-cn/\"\n" +
         "                >简体中文</a>\n" +
         "            </li>\n" +
         "      </ul>\n" +
         "    </div>\n" +
         "  </div>\n" +
         "</nav>\n" +
         "\n" +
         "  <nav class=\"top-nav__items top-nav__items--align-content \">\n" +
         "    \n" +
         "<a href=\"/\">      <img\n" +
         "        style=\"\"\n" +
         "        class=\"top-nav__logo top-nav__logo--dark \"\n" +
         "        src=\"/img/logo-cloudflare-dark.svg\"\n" +
         "        alt=\"Cloudflare\"\n" +
         "      >\n" +
         "      <img\n" +
         "        class=\"top-nav__logo top-nav__logo--light \"\n" +
         "        src=\"/img/logo-cloudflare.svg\"\n" +
         "        alt=\"Cloudflare\"\n" +
         "      >\n" +
         "</a>\n" +
         "\n" +
         "        <ul class=\"top-nav__item-list top-nav__item-list--left\">\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop nojs-hide\" data-submenu=\"Products\" data-tracking-category=\"mainnav\" data-tracking-action=\"click\" data-tracking-label=\"Products\" tabindex=\"0\">\n" +
         "            Products\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop nojs-hide\" data-submenu=\"Solutions\" data-tracking-category=\"mainnav\" data-tracking-action=\"click\" data-tracking-label=\"Solutions\" tabindex=\"0\">\n" +
         "            Solutions\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop nojs-hide\" data-submenu=\"Resources\" data-tracking-category=\"mainnav\" data-tracking-action=\"click\" data-tracking-label=\"Resources\" tabindex=\"0\">\n" +
         "            Resources\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop nojs-hide\" data-submenu=\"Developers\" data-tracking-category=\"mainnav\" data-tracking-action=\"click\" data-tracking-label=\"Developers\" tabindex=\"0\">\n" +
         "            Developers\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop\">\n" +
         "            <a  href=\"/enterprise/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"for-enterprise\" tabindex=\"0\">\n" +
         "              For Enterprise\n" +
         "            </a>\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop top-nav__item-list__link--no-pad-right\">\n" +
         "            <a  href=\"/plans/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"plans\" tabindex=\"0\">\n" +
         "              Pricing\n" +
         "            </a>\n" +
         "          </li>\n" +
         "  </ul>\n" +
         "\n" +
         "        <ul class=\"top-nav__item-list top-nav__item-list--right\">\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop\">\n" +
         "            <a  href=\"https://dash.cloudflare.com/login\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"login\" tabindex=\"0\">\n" +
         "              Log In\n" +
         "            </a>\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop\">\n" +
         "            <a  href=\"https://dash.cloudflare.com/sign-up\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"signup\" tabindex=\"0\">\n" +
         "              Sign Up\n" +
         "            </a>\n" +
         "          </li>\n" +
         "\n" +
         "          <li class=\"top-nav__item-list__link top-nav__items__desktop top-nav__item-list__link--no-ul\">\n" +
         "            \n" +
         "            <a class=\"button button--new-orange js-under-attack-button under-attack-button\" href=\"#\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"under_attack\"  tabindex=\"0\">Under Attack?</a>\n" +
         "          </li>\n" +
         "  </ul>\n" +
         "\n" +
         "\n" +
         "      <button class=\"js-mobilenav-toggle toggle\">\n" +
         "        <span class=\"icon\"></span>\n" +
         "      </button>\n" +
         "  </nav>\n" +
         "\n" +
         "\n" +
         "\n" +
         "<div class=\"desktop-nav MRK-9222-top-nav nav-dropdown\">\n" +
         "\n" +
         "        <div class=\"desktop-nav__Products desktop-nav__container\">\n" +
         "          <div class=\"nav-dropdown-container\">\n" +
         "              <div class=\"dropdown-column\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Performance & Reliability</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/cdn/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cdn\" >CDN</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/dns/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"dns\" >DNS</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/argo-smart-routing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"argo_smart_routing\" >Argo Smart Routing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/load-balancing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"load_balancing\" >Load Balancing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/website-optimization/amp-real-url/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"amp_real_url\" >AMP Real URL</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/website-optimization/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"web-optimization\" >Web Optimizations</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/network/china/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cloudflare_china\" >China Network</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Video Streaming & Delivery</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-stream/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cloudflare-stream\" >Cloudflare Stream</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/stream-delivery/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"stream-delivery-homepage\" >Stream Delivery</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Advanced Security</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/magic-transit/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"magic-transit\" >Magic Transit</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ddos/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ddos\" >DDoS Protection</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/waf/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"waf\" >WAF</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/bot-management/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"bot_management\" >Bot Management</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/rate-limiting/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"rate_limiting\" >Rate Limiting</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ssl/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ssl\" >SSL / TLS</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/dns/dnssec/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"dnssec\" >DNSSEC</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-spectrum/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"spectrum\" >Cloudflare Spectrum</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/argo-tunnel/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"argo_tunnel\" >Argo Tunnel</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Insights</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/analytics/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"analytics\" >Analytics</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-logs/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cloudflare_logs\" >Cloudflare Logs</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare for Developers</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-workers/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cloudflare-workers\" >Cloudflare Workers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/workers-kv/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"workers-kv\" >Cloudflare Workers KV</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.cloudflare.com/sites\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"workers-sites\" >Workers Sites</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/mobile-sdk/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"mobilesdk\" >Mobile SDK</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare for Teams</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://teams.cloudflare.com/access\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"teams-access\" >Cloudflare Access</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://teams.cloudflare.com/gateway\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"teams-gateway\" >Cloudflare Gateway</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare for Everyone</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://1.1.1.1\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"1111-homepage\" >1.1.1.1</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/campaigns/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"campaigns\" >Cloudflare for Campaigns</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Domain Registration</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/registrar/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"registrar\" >Cloudflare Registrar</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare Marketplace</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://cloudflare.com/apps\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"apps\" >Cloudflare Apps</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "        </div>\n" +
         "\n" +
         "        <div class=\"desktop-nav__Solutions desktop-nav__container\">\n" +
         "          <div class=\"nav-dropdown-container\">\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Performance</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/performance/accelerate-internet-applications/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"accelerate-internet-applications\" >Accelerate Internet Applications</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/performance/accelerate-mobile-experiences/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"accelerate-mobile-experiences\" >Accelerate Mobile Experiences</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/performance/ensure-application-availability/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ensure-application-availability\" >Ensure Application Availability</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Security</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ddos/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ddos\" >Mitigate DDoS Attacks</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/security/customer-data-breach/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"customer-data-breach\" >Prevent Customer Data Breaches</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/bot-management/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"malicious-bot-abuse\" >Stop Malicious Bot Abuse</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://teams.cloudflare.com/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"protect-users-and-devices\" >Protect Users and Devices</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Industries</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/gaming/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_gaming\" >Gaming</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/saas/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_saas\" >SaaS</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ecommerce/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_ecommerce\" >eCommerce</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/media-and-entertainment/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_media-and-entertainment\" >Media and Entertainment</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/public-sector/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_publicsector\" >Public Sector</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/galileo/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_publicinterestgroups\" >Public Interest Groups</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/athenian/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_stateandlocalgovernment\" >State & Local Government</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Partnerships</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships\" >Partner Program</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Solutions Partners</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/services/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships_workers_services\" >Services Program</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Technology Partners</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/peering-portal/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships_peering_portal\" >Peering Portal</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/bandwidth-alliance/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships_bandwidth_alliance\" >Bandwidth Alliance</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/analytics/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partners-analytics\" >Analytics Partners</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Integrations</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/ibm-cloud-internet-services/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_ibm_cloud\" >IBM Cloud</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/wordpress/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_wordpress\" >WordPress</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/google-cloud/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_google_cloud\" >Google Cloud</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/magento/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_magento\" >Magento</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/acquia/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_acquia\" >Acquia</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/rackspace-ddos-protection/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_rackspace\" >Rackspace</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/microsoft-azure/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_azure\" >Microsoft Azure</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/kubernetes/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_kubernetes\" >Kubernetes</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/wpengine/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_wpengine\" >WP Engine</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "        </div>\n" +
         "\n" +
         "        <div class=\"desktop-nav__Resources desktop-nav__container\">\n" +
         "          <div class=\"nav-dropdown-container\">\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Develop</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://api.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_api_guide\" >API Guide</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_hub\" >Developer Hub</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/fund/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_fund\" >Developer Fund</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Explore</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/case-studies/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_case_studies\" >Case Studies</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/analysts/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_analysts\" >Analysts</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/network/china/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cloudflare_china\" >Cloudflare in China</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/network/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_network_map\" >Network Map</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/webinars/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_webinars\" >Webinars</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/whats-new/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"whats_new\" >What's New?</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/resources/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_white_papers\" >White Papers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/gdpr/introduction/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_gdpr\" >GDPR</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Learn</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/welcome-free/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_welcome_center\" >Welcome Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/ddos/what-is-a-ddos-attack/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_ddos_learning_center\" >DDoS Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/cdn/what-is-a-cdn/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cdn_learning_center\" >CDN Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/dns/what-is-dns/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_dns_learning_center\" >DNS Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/security/what-is-web-application-security/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_security_learning_center\" >Security Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/performance/why-site-speed-matters/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_performancelearning_center\" >Performance Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/serverless/what-is-serverless/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_serverless_learning_center\" >Serverless Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/ssl/what-is-ssl/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_ssl_learning_center\" >SSL Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/bots/what-is-a-bot/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_bots_learning_center\" >Bots Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/cloud/what-is-the-cloud/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cloud_learning_center\" >Cloud Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/access-management/what-is-identity-and-access-management/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"access-management-learning-center\" >Access Management Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Connect</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://blog.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"blog\" >Blog</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/plans/enterprise/contact/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"contact_sales\" >Contact Sales</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://community.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"community\" >Community</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://support.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"support\" >Support</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column maxwidth-fifth\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Contact</div>\n" +
         "\n" +
         "                      \n" +
         "      <a data-i18n-phonenumber href=\"tel:+16503198930\" style=\"display:none\">+1 650 319 8930</a>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "        </div>\n" +
         "\n" +
         "        <div class=\"desktop-nav__Developers desktop-nav__container\">\n" +
         "          <div class=\"nav-dropdown-container\">\n" +
         "              <div class=\"dropdown-column\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Advanced Cloudflare Configuration</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://api.cloudflare.com/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_api_guide\" >Explore Cloudflare API v4</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/argo-tunnel/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_argo_tunnel\" >Expose a Secure Local Tunnel</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/terraform/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_terraform\" >Configure with Terraform</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/docs/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_docs\" >Documentation</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Customize Your Site</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-workers/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_cloudflare_workers\" >Customize Using Workers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/altering-headers/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_altering_headers\" >Altering Headers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/conditional-routing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_conditional_routing\" >Conditional Request Routing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/a-b-testing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_ab_testing\" >A/B Testing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_recipes\" >Browse All Code Snippets</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"dropdown-column\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Build Serverless Applications</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.cloudflare.com/sites\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"workers-sites\" >Deploy a Static Site</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.dev/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_dev\" >Deploy Using Workers.dev</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.cloudflare.com/docs\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_blog_posts\" >Get Started with Tutorials</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://github.com/cloudflare/worker-examples/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_github_worker_examples\" >Clone Examples on GitHub</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "        </div>\n" +
         "\n" +
         "\n" +
         "</div>\n" +
         "\n" +
         "<div class=\"mobile-nav nav-dropdown\">\n" +
         "  <ul class=\"mobile-nav__list\">\n" +
         "    <li class=\"mobile-nav__list__item mobile-language-picker\">\n" +
         "  <div class=\"mobile-sub-nav__title\" data-submenu=\"languageMobile\">\n" +
         "    <span class=\"mobile-sub-nav__title__text\">\n" +
         "      English\n" +
         "    </span>\n" +
         "    <span class=\"icon icon-plus icon-plus-languageMobile\"></span>\n" +
         "  </div>\n" +
         "</li>\n" +
         "<div class=\"mobile-submenu-languageMobile mobile-sub\">\n" +
         "  <ul class=\"mobile-sub-nav\">\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/en-gb/\"\n" +
         ">\n" +
         "        English (United Kingdom)\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/en-ca/\"\n" +
         ">\n" +
         "        English (Canada)\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/en-au/\"\n" +
         ">\n" +
         "        English (Australia)\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/en-in/\"\n" +
         ">\n" +
         "        English (India)\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/de-de/\"\n" +
         ">\n" +
         "        Deutsch\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/es-es/\"\n" +
         ">\n" +
         "        Español (España)\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/es-la/\"\n" +
         ">\n" +
         "        Español (Latinoamérica)\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/fr-fr/\"\n" +
         ">\n" +
         "        Français\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/it-it/\"\n" +
         ">\n" +
         "        Italiano\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/ja-jp/\"\n" +
         ">\n" +
         "        日本語\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/ko-kr/\"\n" +
         ">\n" +
         "        한국어\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/pt-br/\"\n" +
         ">\n" +
         "        Português\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/zh-tw/\"\n" +
         ">\n" +
         "        繁體中文\n" +
         "      </a>\n" +
         "    </li>\n" +
         "    <li class=\"desktop-nav__sub-menu__list__item\">\n" +
         "      <a href=\"https://www.cloudflare.com/zh-cn/\"\n" +
         ">\n" +
         "        简体中文\n" +
         "      </a>\n" +
         "    </li>\n" +
         "  </ul>\n" +
         "</div>\n" +
         "\n" +
         "          <li class=\"mobile-nav__list__item\">\n" +
         "            <div class=\"mobile-sub-nav__title\" data-submenu=\"Products\">\n" +
         "              <span class=\"mobile-sub-nav__title__text\">Products</span>\n" +
         "              <span class=\"icon icon-plus icon-plus-Products\"></span>\n" +
         "            </div>\n" +
         "          </li>\n" +
         "          <div class=\"mobile-submenu-Products mobile-sub\">\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Performance & Reliability</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/cdn/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cdn\" >CDN</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/dns/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"dns\" >DNS</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/argo-smart-routing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"argo_smart_routing\" >Argo Smart Routing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/load-balancing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"load_balancing\" >Load Balancing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/website-optimization/amp-real-url/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"amp_real_url\" >AMP Real URL</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/website-optimization/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"web-optimization\" >Web Optimizations</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/network/china/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cloudflare_china\" >China Network</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Video Streaming & Delivery</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-stream/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cloudflare-stream\" >Cloudflare Stream</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/stream-delivery/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"stream-delivery-homepage\" >Stream Delivery</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Advanced Security</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/magic-transit/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"magic-transit\" >Magic Transit</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ddos/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ddos\" >DDoS Protection</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/waf/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"waf\" >WAF</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/bot-management/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"bot_management\" >Bot Management</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/rate-limiting/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"rate_limiting\" >Rate Limiting</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ssl/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ssl\" >SSL / TLS</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/dns/dnssec/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"dnssec\" >DNSSEC</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-spectrum/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"spectrum\" >Cloudflare Spectrum</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/argo-tunnel/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"argo_tunnel\" >Argo Tunnel</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Insights</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/analytics/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"analytics\" >Analytics</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-logs/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cloudflare_logs\" >Cloudflare Logs</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare for Developers</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-workers/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"cloudflare-workers\" >Cloudflare Workers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/workers-kv/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"workers-kv\" >Cloudflare Workers KV</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.cloudflare.com/sites\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"workers-sites\" >Workers Sites</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/mobile-sdk/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"mobilesdk\" >Mobile SDK</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare for Teams</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://teams.cloudflare.com/access\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"teams-access\" >Cloudflare Access</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://teams.cloudflare.com/gateway\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"teams-gateway\" >Cloudflare Gateway</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare for Everyone</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://1.1.1.1\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"1111-homepage\" >1.1.1.1</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/campaigns/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"campaigns\" >Cloudflare for Campaigns</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Domain Registration</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/registrar/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"registrar\" >Cloudflare Registrar</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Cloudflare Marketplace</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://cloudflare.com/apps\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"apps\" >Cloudflare Apps</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "          <li class=\"mobile-nav__list__item\">\n" +
         "            <div class=\"mobile-sub-nav__title\" data-submenu=\"Solutions\">\n" +
         "              <span class=\"mobile-sub-nav__title__text\">Solutions</span>\n" +
         "              <span class=\"icon icon-plus icon-plus-Solutions\"></span>\n" +
         "            </div>\n" +
         "          </li>\n" +
         "          <div class=\"mobile-submenu-Solutions mobile-sub\">\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Performance</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/performance/accelerate-internet-applications/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"accelerate-internet-applications\" >Accelerate Internet Applications</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/performance/accelerate-mobile-experiences/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"accelerate-mobile-experiences\" >Accelerate Mobile Experiences</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/performance/ensure-application-availability/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ensure-application-availability\" >Ensure Application Availability</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Security</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ddos/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"ddos\" >Mitigate DDoS Attacks</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/security/customer-data-breach/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"customer-data-breach\" >Prevent Customer Data Breaches</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/bot-management/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"malicious-bot-abuse\" >Stop Malicious Bot Abuse</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://teams.cloudflare.com/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"protect-users-and-devices\" >Protect Users and Devices</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Industries</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/gaming/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_gaming\" >Gaming</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/saas/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_saas\" >SaaS</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/ecommerce/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_ecommerce\" >eCommerce</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/media-and-entertainment/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_media-and-entertainment\" >Media and Entertainment</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/public-sector/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_publicsector\" >Public Sector</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/galileo/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_publicinterestgroups\" >Public Interest Groups</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/athenian/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"industries_stateandlocalgovernment\" >State & Local Government</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Partnerships</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships\" >Partner Program</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Solutions Partners</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/services/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships_workers_services\" >Services Program</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Technology Partners</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/peering-portal/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships_peering_portal\" >Peering Portal</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/bandwidth-alliance/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partnerships_bandwidth_alliance\" >Bandwidth Alliance</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/partners/analytics/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"partners-analytics\" >Analytics Partners</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Integrations</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/ibm-cloud-internet-services/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_ibm_cloud\" >IBM Cloud</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/wordpress/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_wordpress\" >WordPress</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/google-cloud/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_google_cloud\" >Google Cloud</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/magento/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_magento\" >Magento</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/acquia/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_acquia\" >Acquia</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/rackspace-ddos-protection/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_rackspace\" >Rackspace</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/microsoft-azure/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_azure\" >Microsoft Azure</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/kubernetes/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_kubernetes\" >Kubernetes</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/integrations/wpengine/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"integrations_wpengine\" >WP Engine</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "          <li class=\"mobile-nav__list__item\">\n" +
         "            <div class=\"mobile-sub-nav__title\" data-submenu=\"Resources\">\n" +
         "              <span class=\"mobile-sub-nav__title__text\">Resources</span>\n" +
         "              <span class=\"icon icon-plus icon-plus-Resources\"></span>\n" +
         "            </div>\n" +
         "          </li>\n" +
         "          <div class=\"mobile-submenu-Resources mobile-sub\">\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Develop</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://api.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_api_guide\" >API Guide</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_hub\" >Developer Hub</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/fund/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_fund\" >Developer Fund</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Explore</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/case-studies/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_case_studies\" >Case Studies</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/analysts/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_analysts\" >Analysts</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/network/china/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cloudflare_china\" >Cloudflare in China</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/network/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_network_map\" >Network Map</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/webinars/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_webinars\" >Webinars</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/whats-new/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"whats_new\" >What's New?</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/resources/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_white_papers\" >White Papers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/gdpr/introduction/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_gdpr\" >GDPR</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Learn</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/welcome-free/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_welcome_center\" >Welcome Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/ddos/what-is-a-ddos-attack/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_ddos_learning_center\" >DDoS Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/cdn/what-is-a-cdn/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cdn_learning_center\" >CDN Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/dns/what-is-dns/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_dns_learning_center\" >DNS Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/security/what-is-web-application-security/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_security_learning_center\" >Security Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/performance/why-site-speed-matters/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_performancelearning_center\" >Performance Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/serverless/what-is-serverless/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_serverless_learning_center\" >Serverless Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/ssl/what-is-ssl/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_ssl_learning_center\" >SSL Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/bots/what-is-a-bot/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_bots_learning_center\" >Bots Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/cloud/what-is-the-cloud/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"learn_cloud_learning_center\" >Cloud Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/learning/access-management/what-is-identity-and-access-management/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"access-management-learning-center\" >Access Management Learning Center</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Connect</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://blog.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"blog\" >Blog</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/plans/enterprise/contact/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"contact_sales\" >Contact Sales</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://community.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"community\" >Community</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://support.cloudflare.com\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"support\" >Support</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header header-black\">Contact</div>\n" +
         "\n" +
         "                      \n" +
         "      <a data-i18n-phonenumber href=\"tel:+16503198930\" style=\"display:none\">+1 650 319 8930</a>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "          <li class=\"mobile-nav__list__item\">\n" +
         "            <div class=\"mobile-sub-nav__title\" data-submenu=\"Developers\">\n" +
         "              <span class=\"mobile-sub-nav__title__text\">Developers</span>\n" +
         "              <span class=\"icon icon-plus icon-plus-Developers\"></span>\n" +
         "            </div>\n" +
         "          </li>\n" +
         "          <div class=\"mobile-submenu-Developers mobile-sub\">\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Advanced Cloudflare Configuration</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://api.cloudflare.com/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_api_guide\" >Explore Cloudflare API v4</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/argo-tunnel/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_argo_tunnel\" >Expose a Secure Local Tunnel</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/terraform/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_terraform\" >Configure with Terraform</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/docs/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_docs\" >Documentation</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Customize Your Site</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"/products/cloudflare-workers/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_cloudflare_workers\" >Customize Using Workers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/altering-headers/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_altering_headers\" >Altering Headers</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/conditional-routing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_conditional_routing\" >Conditional Request Routing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/a-b-testing/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_ab_testing\" >A/B Testing</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://developers.cloudflare.com/workers/recipes/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_recipes\" >Browse All Code Snippets</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "              <div class=\"mobile-sub-nav\">\n" +
         "                      \n" +
         "      <div class=\"nav-dropdown-header\">Build Serverless Applications</div>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.cloudflare.com/sites\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"workers-sites\" >Deploy a Static Site</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.dev/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_dev\" >Deploy Using Workers.dev</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://workers.cloudflare.com/docs\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_workers_blog_posts\" >Get Started with Tutorials</a>\n" +
         "      </span>\n" +
         "\n" +
         "                      \n" +
         "      <span class=\"nav-dropdown-link\">\n" +
         "        <a  href=\"https://github.com/cloudflare/worker-examples/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"developer_github_worker_examples\" >Clone Examples on GitHub</a>\n" +
         "      </span>\n" +
         "\n" +
         "              </div>\n" +
         "          </div>\n" +
         "          <li class=\"mobile-nav__list__item\">\n" +
         "                \n" +
         "\n" +
         "\n" +
         "    <span class=\"nav-dropdown-link\">\n" +
         "      <a  href=\"/enterprise/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"for-enterprise\" >For Enterprise</a>\n" +
         "    </span>\n" +
         "\n" +
         "          </li>\n" +
         "          <li class=\"mobile-nav__list__item\">\n" +
         "                \n" +
         "\n" +
         "\n" +
         "    <span class=\"nav-dropdown-link\">\n" +
         "      <a  href=\"/plans/\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"plans\" >Pricing</a>\n" +
         "    </span>\n" +
         "\n" +
         "          </li>\n" +
         "\n" +
         "          <div class=\"mobile-nav__button mobile-nav__button__login mobile-nav__button--order-3\">\n" +
         "                \n" +
         "\n" +
         "\n" +
         "    <span class=\"nav-dropdown-link\">\n" +
         "      <a  href=\"https://dash.cloudflare.com/login\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"login\" >Log In</a>\n" +
         "    </span>\n" +
         "\n" +
         "          </div>\n" +
         "          <div class=\"mobile-nav__button mobile-nav__button__signup mobile-nav__button--order-2\">\n" +
         "                \n" +
         "\n" +
         "\n" +
         "    <span class=\"nav-dropdown-link\">\n" +
         "      <a  href=\"https://dash.cloudflare.com/sign-up\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"signup\" >Sign Up</a>\n" +
         "    </span>\n" +
         "\n" +
         "          </div>\n" +
         "          <li class=\"mobile-nav__list__item mobile-nav__button__under-attack\">\n" +
         "                \n" +
         "\n" +
         "\n" +
         "    <span class=\"nav-dropdown-link js-under-attack-button under-attack-button\">\n" +
         "      <a  href=\"#\" data-tracking-category=\"topnav\" data-tracking-action=\"click\" data-tracking-label=\"under_attack\" >Under Attack?</a>\n" +
         "    </span>\n" +
         "\n" +
         "          </li>\n" +
         "  </ul>\n" +
         "</div>\n" +
         "</header>\n" +
         "\n" +
         "<div id=\"react-modal\" data-form-id=\"js-under-attack-form-modal\"></div>\n" +
         "  <link rel=\"stylesheet\" href=\"https://assets.www.cloudflare.com/css/modules/pages/marketo-form-09b9fa5342.min.css\">\n" +
         "  <script nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\" src=\"//app-ab13.marketo.com/js/forms2/js/forms2.min.js\"></script>\n" +
         "<script nonce=\"\">\n" +
         "  (function() {\n" +
         "    if (!window.CFJS.loadedMarketoForms) {\n" +
         "      window.CFJS.loadedMarketoForms = {};\n" +
         "    }\n" +
         "    function load() {\n" +
         "      if (window.CFJS.loadedMarketoForms[\"1649\"]) {\n" +
         "        if (window.location.host.match(/^stg.mrk.cfdata.org$/) || window.location.host.match(/^localhost/)) {\n" +
         "          window.alert('This page has the same form embedded twice which is not supported');\n" +
         "        }\n" +
         "        return;\n" +
         "      }\n" +
         "\n" +
         "      window.CFJS.loadedMarketoForms[\"1649\"] = true;\n" +
         "      var counter = 0;\n" +
         "\n" +
         "      var loadMarketoFormJS = setInterval(function() {\n" +
         "        counter++;\n" +
         "        if (counter >= 50) { // 10000ms / 200ms = 50\n" +
         "          clearInterval(loadMarketoFormJS);\n" +
         "        }\n" +
         "\n" +
         "        if ('MktoForms2' in window && window.CFJS.marketoFormEmbed) {\n" +
         "          MktoForms2.loadForm(\"//app-ab13.marketo.com\", \"713-XSC-918\", \"1649\", window.CFJS.marketoFormEmbed)\n" +
         "          clearInterval(loadMarketoFormJS);\n" +
         "        }\n" +
         "      }, 200);\n" +
         "    }\n" +
         "      load();\n" +
         "  })();\n" +
         "</script>\n" +
         "\n" +
         "<div id=\"js-under-attack-form-modal\" class=\"modal-react under-attack-form-modal\" style=\"display: none;\">\n" +
         "  <div class=\"tile__content\">\n" +
         "    <div class=\"under-attack-modal__form-modal__content\">\n" +
         "        <div class=\"under-attack-modal__form-modal__tabbed-content\">\n" +
         "          <div class=\"single-form-modal-marketo-embed\">\n" +
         "                          \n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "  <div class=\"mkto-form-embed\">\n" +
         "    <form id=\"mktoForm_1649\" class=\"mkto-form-embed__form\" data-embedmarketoid=\"1649\" data-leadsource=\"Inbound - Under Attack Web Form\" data-leadsourcedetail=\"Under Attack Hotline Landing Page\" data-submitbuttontext=\"\" data-submitbuttoncolor=\"\" data-successmessage=\"Someone from Cloudflare will be in touch with you shortly.\" data-thankyou=\"Thank You\" data-assetdownload=\"\" data-assetdownloadtext=\"Download\" data-defaultcomment=\"\" data-formsuccessurl=\"\"></form>\n" +
         "    <p class=\"text--center text--extra-small\">\n" +
         "      <a href=\"/privacypolicy/\" class=\"privacy-link\" target=\"_blank\">Your privacy is important to us.</a>\n" +
         "    </p>\n" +
         "\n" +
         "    \n" +
         "    <div class=\"mktoForm__success mktoForm__success--hidden\">\n" +
         "      <img class=\"responsive-image responsive-image--65px-height\" title=\"success logo\" alt=\"success logo\" src=\"/img/icon_check-white.svg\" />\n" +
         "      <h3 class=\"mktoForm__success__h3\">Thank You</h3>\n" +
         "      <span class=\"mktoForm__success__message\">Someone from Cloudflare will be in touch with you shortly.</span>\n" +
         "    </div>\n" +
         "  </div>\n" +
         "\n" +
         "\n" +
         "          </div>\n" +
         "        </div>\n" +
         "    </div>\n" +
         "  </div>\n" +
         "</div>\n" +
         "\n" +
         "<div class=\"compact-nav-dropdown js-compact-nav-dropdown\">\n" +
         " <ul class=\"marketing-list\">\n" +
         "   <li class=\"desktop-nav__sub-menu__list__item\">Contact Us</li>\n" +
         "   <li class=\"desktop-nav__sub-menu__list__item\"><a href=\"/under-attack-hotline/\">Help! I'm Under Attack!</a></li>\n" +
         "   <li class=\"desktop-nav__sub-menu__list__item\"><a href=\"/plans/enterprise/contact/\">Email Sales</a></li>\n" +
         "   <li class=\"desktop-nav__sub-menu__list__item\"><a href=\"https://support.cloudflare.com/\">Support</a></li>\n" +
         "   <li class=\"desktop-nav__sub-menu__list__item\"><a\n" +
         "     href=\"tel:18889935273\">1-888-993-5273</a></li>\n" +
         " </ul>\n" +
         "</div>\n" +
         "\n" +
         "<div class=\"site-content  site-content--homepage\">\n" +
         "\n" +
         "\n" +
         "  \n" +
         "\n" +
         "  \n" +
         "\n" +
         "  \n" +
         "  \n" +
         "\n" +
         "  \n" +
         "      \n" +
         "  <section class=\"top-banner-framework js-meerkat-banner-top bg-builtforthisDarkBlue\" data-name=\"top-banner-framework\">\n" +
         "    <div class=\"top-banner-framework__wrapper flex items-center justify-center top-banner-framework__wrapper__orange-bg\">\n" +
         "      <div style=\"max-width: 1200px; width: 100%; position: relative;\">\n" +
         "      <div class=\"banner-v1__close top-banner-framework__close js-top-banner__close\"></div>\n" +
         "        <div class=\"flex flex-column flex-row-l items-center justify-center ph3\">\n" +
         "          <span class=\"white lh-solid tc tl-l f2 f3-m f3-l white\">Need help enabling access for remote employees? Cloudflare for Teams is available at no cost through September 1.&nbsp;</span><a href=\"https://teams.cloudflare.com/\" class=\"top-banner-framework__link white fw7 f2 f3-m f3-l gt-after lh-copy pa0\" data-tracking-category=\"Top Banner\" data-tracking-action=\"(click) WWW Banner\" data-tracking-label=\"Need help enabling access for remote employees? Cloudflare for Teams is available at no cost through September 1. - \">Learn More</a>\n" +
         "        </div>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "  \n" +
         "  <section id=\"hero\" class=\"builtforthis-hero-margin pb5\">\n" +
         "    <h1 class=\"headline1 db dn-m dn-l ph3\">\n" +
         "      The Internet was #BuiltForThis\n" +
         "    </h1>\n" +
         "    \n" +
         "    <div class=\"js-hero-copy-container js-hero-copy-container--show pv6 pv5-m pv0-l mw9 flex flex-row flex-wrap center ph3 ph4-m ph3-l bg-gray9\"style=\"background-image: url('/resources/images/slt3lc6tev37/16oHVSJSih1Hhcp0q0eAc8/13bdc2e76d301cf7720969f706952de6/Image_hero_video-still.jpg'); background-size: cover\">\n" +
         "      <div class=\"w-100 ph6\">\n" +
         "        <div>\n" +
         "          <div class=\"db dn-m dn-l tc\">\n" +
         "            <img src=\"/resources/images/slt3lc6tev37/2MqHm32Wzc2fPi1XHJcslQ/28a66f243266d2478e7e475b150b87cf/video-play.svg\" class=\"pointer js-hero-video-trigger video-play-icon\" />\n" +
         "          </div>\n" +
         "            <div class=\"dn dib-m dib-l inline-flex-m inline-flex-l items-center mw-100 mb6 pt3 pb2 ph4\" style=\"background: #FF6633\">\n" +
         "              <img src=\"/resources/images/slt3lc6tev37/2MqHm32Wzc2fPi1XHJcslQ/28a66f243266d2478e7e475b150b87cf/video-play.svg\" class=\"pointer js-hero-video-trigger video-play-icon v-mid mr3\" />\n" +
         "              <h1 class=\"headline1 white\">\n" +
         "                The Internet was #BuiltForThis\n" +
         "              </h1>\n" +
         "            </div>\n" +
         "        </div>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "\n" +
         "    \n" +
         "    <div class=\"js-hero-video-container js-hero-video-container--hidden h-0rem mw9 flex-row flex-wrap center ph3 ph4-m ph3-l\">\n" +
         "        <stream src=\"3f279831ceb2750c366d1b8bce3fa7bd\"\n" +
         "controls\n" +
         "\n" +
         "class=\"js-hero-video w-100 h-100\"  >\n" +
         "  </stream>\n" +
         "\n" +
         "  \n" +
         "  <script nonce=\"\" type=\"text/javascript\">\n" +
         "    (function () {\n" +
         "      if (!document.getElementById('video_embed')) {\n" +
         "        var url = \"https://embed.cloudflarestream.com/embed/r4xu.fla9.latest.js\";\n" +
         "        var script = document.createElement('script');\n" +
         "        script.src = url;\n" +
         "        script.id = \"video_embed\";\n" +
         "        script.defer = true;\n" +
         "        script.async = true;\n" +
         "\n" +
         "        document.getElementsByTagName('body')[0].appendChild(script);\n" +
         "      }\n" +
         "    })();\n" +
         "  </script>\n" +
         "\n" +
         "\n" +
         "    </div>\n" +
         "  </section>\n" +
         "\n" +
         "  \n" +
         "  <section class=\"ph3 pb5 pb7-l pt5-l\">\n" +
         "    \n" +
         "    <div class=\"mw8 flex flex-row flex-wrap center pb3-l\">\n" +
         "      <div class=\"w-100 w-100-m w-50-l\">\n" +
         "        <h2 class=\"headline1 w-24rem-l mt1 mw-100 w-16rem w-100-m w-20rem-l\">Cloudflare was built for this.</h2>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-100-m w-50-l\">\n" +
         "        <p class=\"copy-1\">We’ve always believed in the Internet.</p>\n" +
         "\n" +
         "<p class=\"copy-1\">Originally conceived as a communications network for humanity during a crisis, it’s come a long way since then. But in this moment, it’s being put to use for that original purpose.</p>\n" +
         "\n" +
         "<p class=\"copy-1\">Around the world thousands of network engineers, technicians, and system administrators are working tirelessly to keep this system functioning for the rest of us. They’re grappling with greater network demands, a rapid acceleration in remote work, and a growing risk of cyber threats.</p>\n" +
         "\n" +
         "<p class=\"copy-1\">They persevere so that the Internet continues to be secure, fast, and reliable. Cloudflare is proud to be helping them with these efforts. Our mission: to help build a better Internet.</p>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "\n" +
         "    \n" +
         "    <div class=\"pt4 mw8 flex flex-row flex-wrap justify-between center\">\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 pr3\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon network blue 56px height bounding box\" alt=\"icon network blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/1Tz4MFKkKlNBzAkA1z0Tdc/72444a5240cca1c6f646bb70777f8e73/icon_network_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt2 f4 fw7 minh-3rem-m lh-title brandGray5\">The Internet’s original purpose</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-7rem-l\">Learn about the origins of the Internet and how it was built to help us in a moment like this.</p>\n" +
         "        <a href=\"/builtforthis/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 pr3\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon open door blue 56px height bounding box\" alt=\"icon open door blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/3uk9ROAOoKdQ1jPF1hjYjc/c18a5414de5855228ecbdc63777ba480/icon_open-door_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt2 f4 fw7 minh-3rem-m lh-title brandGray5\">Help for impacted businesses</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-7rem-l\">See how technology firms are committed to helping your business operate during today's challenges with free or discounted Internet-enabled services.</p>\n" +
         "        <a href=\"https://openforbusiness.org/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 \">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon connected\" alt=\"icon connected\" src=\"/resources/images/slt3lc6tev37/3R4A8LXmxsBRr2ozFY08s9/236f69cee54ade1efbf547dfd0ac0749/icon_connected.svg\" />\n" +
         "        <h3 class=\"mt2 f4 fw7 minh-3rem-m lh-title brandGray5\">Keep your team connected</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-7rem-l\">Cloudflare for Teams is available at no cost through this crisis. Cloudflare for Teams lets your employees securely access internal applications without a VPN.</p>\n" +
         "        <a href=\"https://teams.cloudflare.com/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "\n" +
         "\n" +
         "  \n" +
         "\n" +
         "  <section class=\"blade ph3 bg-builtforthisGray9 pv5-l\">\n" +
         "    <div class=\"mw8 flex flex-row flex-wrap center\">\n" +
         "      <div class=\"w-100 w-100-m w-50-l\">\n" +
         "        <h3 class=\"headline1 tl-l w-24rem-l mw-100 mt1 lh-title-ns\">Built for anything connected to the Internet.</h3>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-100-m w-50-l\">\n" +
         "        <h3 class=\"fw7 f4 f5-l lh-title mt1\">Cloudflare is the foundation for your  infrastructure, applications, and teams.</h3>\n" +
         "        <p class=\"copy-1\">Cloudflare secures and ensures the reliability of your external-facing resources such as websites, APIs, and applications. It protects your internal resources such as behind-the-firewall applications, teams, and devices. And it is your platform for developing globally scalable applications.</p>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "\n" +
         "\n" +
         "  \n" +
         "\n" +
         "  <section class=\"pv5 ph3 bg-builtforthisGray9\">\n" +
         "    <div class=\"mw8 flex flex-column-reverse flex-row-l flex-wrap center mb6\">\n" +
         "      <div class=\"w-100 w-100-m w-50-l pr4-l\">\n" +
         "        <h4 class=\"fw7 ttu lh-copy mb2\">CLOUDFLARE FOR TEAMS</h4>\n" +
         "        <h3 class=\"fw7 f6 lh-title mt1\">Secure your team and devices.</h3>\n" +
         "        <p class=\"copy-1\">Behind-the-firewall applications and devices are foundational to the work of your internal teams. The recent surge in remote work is testing the limits of many organizations’ VPN and other hardware solutions.</p>\n" +
         "\n" +
         "<p class=\"copy-1\">Cloudflare for Teams has everything your team members need to securely work on corporate applications from any location or device — without a VPN.</p>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-100-m w-50-l\">\n" +
         "        <img class=\"w-100 ph4 ph6-m ph0-l\" title=\"illustration secure teams devices\" alt=\"illustration secure teams devices\" src=\"/resources/images/slt3lc6tev37/M6Jk6FfZh11kSRPTus2jy/8ab52b597f847e27a9195e3a8a28f46c/illustration_secure-teams-devices.svg\" />\n" +
         "      </div>\n" +
         "    </div>\n" +
         "\n" +
         "    \n" +
         "    <div class=\"pt4 mw8 flex flex-row flex-wrap justify-between center\">\n" +
         "      <div class=\"w-100 w-50-m w-50-l mb4 pr4\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon access blue 56px height bounding box\" alt=\"icon access blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/7c2e6Kkcrysl6uGh9hm2LA/c542451882776c36223b0ad10dd3ffd3/icon_access_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">Cloudflare Access</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-5rem-l\">Protect behind-the-firewall internal applications, like Jira and Confluence, SAP, or in-house developed applications, without needing a hardware VPN.</p>\n" +
         "        <a href=\"https://teams.cloudflare.com/access/index.html\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-50-m w-50-l mb4 \">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon gateway blue 56px height bounding box\" alt=\"icon gateway blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/7K6wEWVnTRP3iVSUMpY6XU/808abb9c4ec4f7a386c266f98eaca20a/icon_gateway_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">Cloudflare Gateway</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-5rem-l\">Protect corporate devices from visiting malware and phishing sites, and enforce other corporate web policies for your organization.</p>\n" +
         "        <a href=\"https://teams.cloudflare.com/gateway/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "\n" +
         "  \n" +
         "\n" +
         "  <section class=\"pv3 pv5-m pv5-l ph3 bg-builtforthisGray9\">\n" +
         "    <div class=\"mw8 flex flex-row flex-wrap center\">\n" +
         "      <div class=\"w-100 w-100-m w-50-l pr4-l\">\n" +
         "        <img class=\"w-100 ph4 ph6-m ph0-l\" title=\"illustration protect presence\" alt=\"illustration protect presence\" src=\"/resources/images/slt3lc6tev37/1J63U8McMRTlG9jJAPR1g9/d984887030179202a75abd9ac4b26095/illustration_protect-presence.svg\" />\n" +
         "        \n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-100-m w-50-l\">\n" +
         "        <h4 class=\"fw7 ttu lh-copy mb2\">CLOUDFLARE FOR INFRASTRUCTURE</h4>\n" +
         "        <h3 class=\"fw7 f6 lh-title mt1\">Protect your Internet presence.</h3>\n" +
         "        <p class=\"copy-1\">Your website, APIs, and applications are your key channels for doing business with your customers and suppliers. As more and more shift online, ensuring these resources are secure, performant and reliable is a business imperative.</p>\n" +
         "\n" +
         "<p class=\"copy-1\">Cloudflare for Infrastructure is a complete solution to enable this for anything connected to the Internet.</p>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "\n" +
         "    \n" +
         "    <div class=\"pt4 mw8 flex flex-row flex-wrap justify-between center\">\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 pr4\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon security blue 56px height bounding box\" alt=\"icon security blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/1qyDEBnfSjGjDAj5V6Zo1g/890f850530cd6194a5cc8659cd2307ff/icon_security_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">Security</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-3rem-l\">Firewall, DDoS protection, rate limiting, bot management, VPN, and more</p>\n" +
         "        <a href=\"/security/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 pr4\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon performance blue 56px height bounding box\" alt=\"icon performance blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/3b4JfNgArGYObs2nm5S1za/d2339ca307ee8601fd34e1141ad22f36/icon_performance_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">Performance</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-3rem-l\">Intelligent routing, mobile & image optimization, video, cache</p>\n" +
         "        <a href=\"/performance/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 \">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon reliability blue 56px height bounding box\" alt=\"icon reliability blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/4rY6l8s0HsXgllVNIavx8L/ea0ce6dbbda90e49a0ceb5186a116428/icon_reliability_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">Reliability</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-3rem-l\">Load balancing, DNS, virtual backbone</p>\n" +
         "        <a href=\"/reliability/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "\n" +
         "  \n" +
         "  <section class=\"pt5 pb7 ph3 bg-builtforthisGray9\">\n" +
         "    <div class=\"mw8 flex flex-column-reverse flex-row-l flex-wrap center mb6\">\n" +
         "      <div class=\"w-100 w-100-m w-50-l pr4-l\">\n" +
         "        <h4 class=\"fw7 ttu lh-copy mb2\">CLOUDFLARE WORKERS</h4>\n" +
         "        <h3 class=\"fw7 f6 lh-title mt1\">Build globally scalable applications.</h3>\n" +
         "        <p class=\"copy-1\">The traditional model of building cloud applications requires you to set up containers and deploy to zones. Should your application or website surge in popularity, you have to manage the scaling process.</p>\n" +
         "\n" +
         "<p class=\"copy-1\">Cloudflare Workers changes that. You write the code, and we handle the rest. With serverless functions, storage at the edge, and instant static sites, you can build your applications directly onto our network.</p>\n" +
         "\n" +
         "<a href=\"https://workers.cloudflare.com/\" class=\"fw7 no-underline builtforthisBlue gt-after\">Learn more</a>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-100-m w-50-l flex align-center\">\n" +
         "        <img class=\"mw-100 w-40rem\" title=\"illustration workers\" alt=\"illustration workers\" src=\"/resources/images/slt3lc6tev37/4CmxsmO2IvPX41o6U160Ag/adf11625c2c6e121dd122a1b9053ed75/illustration_workers.svg\" />\n" +
         "      </div>\n" +
         "    </div>\n" +
         "\n" +
         "    \n" +
         "    <div class=\"pt4 mw8 flex flex-row flex-wrap justify-between center\">\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 pr4\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon no servers blue 56px height bounding box\" alt=\"icon no servers blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/5uu1ZGpzWEiF4CEzFzB5wL/c090daf14a2a9f23e7acff48dade8415/icon_no-servers_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">No servers to maintain</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-5rem-l\">Spend more time building, less time configuring. No VMs, no servers, and no containers to spin up or manage. Deploy using our CLI, web interface, or API.</p>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 pr4\">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon serverless blue 56px height bounding box\" alt=\"icon serverless blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/1T7hzby9vPdsEYufwvpVO2/8ca5486723d2be3b845e9236a059eb81/icon_serverless_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">JavaScript, Rust, C, C++</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-5rem-l\">Whether building an app, creating a function, or writing an API, we have templates, tutorials, and a CLI to get you up and running in no time.</p>\n" +
         "      </div>\n" +
         "      <div class=\"w-100 w-33-m w-33-l mb4 \">\n" +
         "        <img class=\"w3 h3-temp\" title=\"icon scaling blue 56px height bounding box\" alt=\"icon scaling blue 56px height bounding box\" src=\"/resources/images/slt3lc6tev37/1YNXeuE42YGTpq8SdlKJOZ/3c72a2accebd4a8a9376a879ed93864d/icon_scaling_blue_56px-height-bounding-box.svg\" />\n" +
         "        <h3 class=\"mt1 f5 fw7 lh-title brandGray5\">Automatic scaling</h3>\n" +
         "        <p class=\"copy-1 minh-8rem-m minh-5rem-l\">No more configuring auto-scaling or load balancers. Your code is deployed to all of our data centers in ~15 seconds. Traffic is automatically routed across our network.</p>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </section>\n" +
         "\n" +
         "  \n" +
         "  \n" +
         "    \n" +
         "    <section class=\"bg-builtforthisDarkBlue pv5\">\n" +
         "        <div class=\"grid-container justify-between items-center\">\n" +
         "                <div class=\"w-100 w-50-l center ph3 pl6-l pr4-l ph5-m\">\n" +
         "                    <h3 class=\"white headline2 mw7 mv0-l mt0\">\n" +
         "Get started in just 5 minutes. Join Cloudflare today.\n" +
         "                    </h3>\n" +
         "                </div>\n" +
         "                <div class=\"w-100 w-50-l center ph3 pl5-l pr0-l ph5-m mb3 mb0-m mb0-l\">\n" +
         "                    <div class=\"flex flex-row flex-wrap items-center\">\n" +
         "                        <a href=\"https://dash.cloudflare.com/sign-up\" class=\"button-framework--tall button-framework fw7 f2 white bg-orange mr0 mr4-l mb2 mb2-m mb0-l mb0-m\" data-tracking-category=\"newhp-acquisition-blade0\" data-tracking-action=\"click\" data-tracking-label=\"sign_up-[https://dash.cloudflare.com/sign-up]\">Sign Up</a>\n" +
         "                        <a href=\"/plans/enterprise/contact/\" class=\"button-framework--tall button-framework fw7 white bg-orange mb2-m\" data-tracking-category=\"newhp-acquisition-blade0\" data-tracking-action=\"click\" data-tracking-label=\"sign_up-[/plans/enterprise/contact/]\">Contact Sales</a>\n" +
         "                    </div>\n" +
         "                </div>\n" +
         "        </div>\n" +
         "    </section>\n" +
         "\n" +
         "\n" +
         "  \n" +
         "\n" +
         "  \n" +
         "  <section class=\"pt6-l pt6-m pb5 pb6-l bb b--gray8 bg-gray9 pt6\">\n" +
         "      <h3 class=\"brandGray5 fw7 f5 f6-l tc mb6 mt0 mw-100 w-40rem-l center lh-title ph3 ph0-l\">Cloudflare is helping to keep thousands of businesses online and secure every day.</h3>\n" +
         "    <div class=\"mw9 flex flex-row flex-wrap justify-around justify-center-l justify-between-l items-center center ph3 ph6-l\">\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo shopify color 32px wrapper\" alt=\"logo shopify color 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/7mhur0vl8q716TyGFZuCIG/eb25a63164683ac3def2a74fcb388dfc/logo_shopify_color_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo shopify color 32px wrapper\" alt=\"logo shopify color 32px wrapper\" src=\"/resources/images/slt3lc6tev37/7mhur0vl8q716TyGFZuCIG/eb25a63164683ac3def2a74fcb388dfc/logo_shopify_color_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo lending tree gray 32px wrapper\" alt=\"logo lending tree gray 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/7lhZTNuuLxtB38r8n1VORb/15fc092859df8e25492a504952dfe32d/logo_lending-tree_gray_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo lending tree gray 32px wrapper\" alt=\"logo lending tree gray 32px wrapper\" src=\"/resources/images/slt3lc6tev37/7lhZTNuuLxtB38r8n1VORb/15fc092859df8e25492a504952dfe32d/logo_lending-tree_gray_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo labcorp gray 32px wrapper\" alt=\"logo labcorp gray 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/47baOjkvX7lLtmTdWvCYI9/d6ca0d475891ffcaee2899676fdd6b79/logo_labcorp_gray_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo labcorp gray 32px wrapper\" alt=\"logo labcorp gray 32px wrapper\" src=\"/resources/images/slt3lc6tev37/47baOjkvX7lLtmTdWvCYI9/d6ca0d475891ffcaee2899676fdd6b79/logo_labcorp_gray_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo ncr gray 32px wrapper\" alt=\"logo ncr gray 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/26kszL2y2X7zTR2edZPDUY/7f4ad6a99d6a17810675fe7bef63b21b/logo_ncr_gray_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo ncr gray 32px wrapper\" alt=\"logo ncr gray 32px wrapper\" src=\"/resources/images/slt3lc6tev37/26kszL2y2X7zTR2edZPDUY/7f4ad6a99d6a17810675fe7bef63b21b/logo_ncr_gray_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo thomson reuters 32px wrapper gray\" alt=\"logo thomson reuters 32px wrapper gray\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/3JniCZlkcKI9iHgormG8j3/b73a3a2340072b0e33cc05590e282084/logo_thomson-reuters_32px-wrapper_gray.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo thomson reuters 32px wrapper gray\" alt=\"logo thomson reuters 32px wrapper gray\" src=\"/resources/images/slt3lc6tev37/3JniCZlkcKI9iHgormG8j3/b73a3a2340072b0e33cc05590e282084/logo_thomson-reuters_32px-wrapper_gray.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo zendesk 32px wrapper gray\" alt=\"logo zendesk 32px wrapper gray\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/5YRPa33UFrfL2zoZd2AXTq/0293ee801fb1dc71d7ecf68fba0b5316/logo_zendesk_32px-wrapper_gray.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo zendesk 32px wrapper gray\" alt=\"logo zendesk 32px wrapper gray\" src=\"/resources/images/slt3lc6tev37/5YRPa33UFrfL2zoZd2AXTq/0293ee801fb1dc71d7ecf68fba0b5316/logo_zendesk_32px-wrapper_gray.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo mars gray 32px wrapper\" alt=\"logo mars gray 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/17ovo10a1mEsAZ7ZwFKfFl/1a22ca0b02a79aa6b53b582b7d7155e3/logo_mars_gray_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo mars gray 32px wrapper\" alt=\"logo mars gray 32px wrapper\" src=\"/resources/images/slt3lc6tev37/17ovo10a1mEsAZ7ZwFKfFl/1a22ca0b02a79aa6b53b582b7d7155e3/logo_mars_gray_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo loreal color 32px wrapper\" alt=\"logo loreal color 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/75Iu2nwjYyY5rckEPqO9hr/deac9c5903e5e95d79cad26b6e02d9b6/logo_loreal_color_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo loreal color 32px wrapper\" alt=\"logo loreal color 32px wrapper\" src=\"/resources/images/slt3lc6tev37/75Iu2nwjYyY5rckEPqO9hr/deac9c5903e5e95d79cad26b6e02d9b6/logo_loreal_color_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo iata gray 32px wrapper\" alt=\"logo iata gray 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/5yRg7O1w1zLeshRZKuXSVY/5a9bf61d0750dd02aba8987b91ea4cfa/logo_iata_gray_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo iata gray 32px wrapper\" alt=\"logo iata gray 32px wrapper\" src=\"/resources/images/slt3lc6tev37/5yRg7O1w1zLeshRZKuXSVY/5a9bf61d0750dd02aba8987b91ea4cfa/logo_iata_gray_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo national instrumments color 32px wrapper\" alt=\"logo national instrumments color 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/5PCoN7v5SK2vuMRSpVQuJK/a14e18ea95902451b75d4c03060f95d0/logo_national-instrumments_color_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo national instrumments color 32px wrapper\" alt=\"logo national instrumments color 32px wrapper\" src=\"/resources/images/slt3lc6tev37/5PCoN7v5SK2vuMRSpVQuJK/a14e18ea95902451b75d4c03060f95d0/logo_national-instrumments_color_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo ibm 32px wrapper gray\" alt=\"logo ibm 32px wrapper gray\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/mAzLb3ofkkG38jtcP2Ys8/c78608eaeec1c8b1003ff42cdcebe689/logo_ibm_32px-wrapper_gray.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo ibm 32px wrapper gray\" alt=\"logo ibm 32px wrapper gray\" src=\"/resources/images/slt3lc6tev37/mAzLb3ofkkG38jtcP2Ys8/c78608eaeec1c8b1003ff42cdcebe689/logo_ibm_32px-wrapper_gray.svg\" /></noscript>\n" +
         "          </div>\n" +
         "          <div class=\"w-50 w-33-m w-16-l flex justify-center mb3\">\n" +
         "            <img class=\" js-lazy\" title=\"logo 23andme gray 32px wrapper\" alt=\"logo 23andme gray 32px wrapper\" src=\"\" data-src=\"/resources/images/slt3lc6tev37/2TfcZ86qvZor2xtI2z4Vvr/63e1a21697a53c519f5a0c3b0a7beccf/logo_23andme_gray_32px-wrapper.svg\" placeholder=\"\" /><noscript><img class=\"\" title=\"logo 23andme gray 32px wrapper\" alt=\"logo 23andme gray 32px wrapper\" src=\"/resources/images/slt3lc6tev37/2TfcZ86qvZor2xtI2z4Vvr/63e1a21697a53c519f5a0c3b0a7beccf/logo_23andme_gray_32px-wrapper.svg\" /></noscript>\n" +
         "          </div>\n" +
         "    </div>\n" +
         "      <p class=\"tc mt4\">\n" +
         "        <a href=\"/case-studies/\" \n" +
         "        class=\"gt-after builtforthisBlue fw7 mt2 no-underline\" \n" +
         "        data-tracking-category=\"newhp-case-studies-blade\" \n" +
         "        data-tracking-action=\"click\" \n" +
         "        data-tracking-label=\"casestudy-viewall\">View all case studies</a>\n" +
         "      </p>\n" +
         "  </section>\n" +
         "\n" +
         "\n" +
         "  \n" +
         "  <div class=\"homepage\">\n" +
         "    <section class=\"banner-v1 js-bottom-banner hide-desktop hide-tablet\" data-name=\"banner-test\">\n" +
         "  <div class=\"banner-v1__body banner-v1__body__mobile\" >\n" +
         "    <div class=\"banner-v1__close js-bottom-banner__close\"></div>\n" +
         "    <div class=\"banner-v1__wrapper\">\n" +
         "      <a class=\"button button--orange text--body--small\" data-tracking-category=\"Other CTA\" data-tracking-action=\"Sign Up\" data-tracking-label=\"/\" href='https://dash.cloudflare.com/sign-up'>Sign Up</a>\n" +
         "      <span class=\"text--bolder text--side-margin\">or</span> \n" +
         "      <a class=\"anchor alternate-link--cf-orange text--bolder\" data-tracking-category=\"Other CTA\" data-tracking-action=\"Talk to an Expert\" data-tracking-label=\"/\" href='/plans/enterprise/contact/'>Talk to an expert</a>\n" +
         "    </div>\n" +
         "  </div>\n" +
         "</section>\n" +
         "\n" +
         "  </div>\n" +
         "\n" +
         "    \n" +
         "  \n" +
         "\n" +
         "\n" +
         "\n" +
         "</div>\n" +
         "\n" +
         "<footer class=\"cms-mainfooter main-footer\">\n" +
         "  <!-- Top Section of the footer-->\n" +
         "  <div class=\"main-footer__container\">\n" +
         "    <div class=\"main-footer__row\">\n" +
         "        <div class=\"main-footer__menu-group\">\n" +
         "          <ul id=\"sales-menu\">\n" +
         "            <li data-submenu=\"sales-menu\" class=\"main-footer__menu-group__header js-toggle-footer-group\">\n" +
         "              Sales\n" +
         "              <span class=\"icon icon-caret-down\"></span>\n" +
         "            </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/plans/enterprise/contact/\">\n" +
         "                  Enterprise Sales\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/partners/\">\n" +
         "                  Become a Partner\n" +
         "                </a>\n" +
         "              </li>\n" +
         "          </ul>\n" +
         "            <p class=\"phone\">\n" +
         "              Contact Sales:<br><a data-i18n-phonenumber class=\"tel\" href=\"tel:+16503198930\" style=\"display:none\">+1 650 319 8930</a>\n" +
         "              <noscript><a class=\"phone\" href=\"tel:+16503198930\">+1 650 319 8930</a></noscript>\n" +
         "            </p>\n" +
         "        </div>\n" +
         "        <div class=\"main-footer__menu-group\">\n" +
         "          <ul id=\"getting-started-menu\">\n" +
         "            <li data-submenu=\"getting-started-menu\" class=\"main-footer__menu-group__header js-toggle-footer-group\">\n" +
         "              Getting Started\n" +
         "              <span class=\"icon icon-caret-down\"></span>\n" +
         "            </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/analysts/\">\n" +
         "                  Industry Analysts\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/plans/\">\n" +
         "                  Pricing\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/case-studies/\">\n" +
         "                  Case Studies\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/resources/\">\n" +
         "                  White Papers\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/webinars/\">\n" +
         "                  Webinars\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/learning/\">\n" +
         "                  Learning Center\n" +
         "                </a>\n" +
         "              </li>\n" +
         "          </ul>\n" +
         "        </div>\n" +
         "        <div class=\"main-footer__menu-group\">\n" +
         "          <ul id=\"community-menu\">\n" +
         "            <li data-submenu=\"community-menu\" class=\"main-footer__menu-group__header js-toggle-footer-group\">\n" +
         "              Community\n" +
         "              <span class=\"icon icon-caret-down\"></span>\n" +
         "            </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"https://community.cloudflare.com\">\n" +
         "                  Community Hub\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"https://blog.cloudflare.com\">\n" +
         "                  Blog\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/galileo/\">\n" +
         "                  Project Galileo\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/athenian/\">\n" +
         "                  Athenian Project\n" +
         "                </a>\n" +
         "              </li>\n" +
         "          </ul>\n" +
         "        </div>\n" +
         "        <div class=\"main-footer__menu-group\">\n" +
         "          <ul id=\"developers-menu\">\n" +
         "            <li data-submenu=\"developers-menu\" class=\"main-footer__menu-group__header js-toggle-footer-group\">\n" +
         "              Developers\n" +
         "              <span class=\"icon icon-caret-down\"></span>\n" +
         "            </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"https://developers.cloudflare.com\">\n" +
         "                  Developer Hub\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/products/cloudflare-workers/\">\n" +
         "                  Cloudflare Workers\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/integrations/\">\n" +
         "                  Integrations\n" +
         "                </a>\n" +
         "              </li>\n" +
         "          </ul>\n" +
         "        </div>\n" +
         "        <div class=\"main-footer__menu-group\">\n" +
         "          <ul id=\"support-menu\">\n" +
         "            <li data-submenu=\"support-menu\" class=\"main-footer__menu-group__header js-toggle-footer-group\">\n" +
         "              Support\n" +
         "              <span class=\"icon icon-caret-down\"></span>\n" +
         "            </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"https://support.cloudflare.com\">\n" +
         "                  Help Center\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"https://www.cloudflarestatus.com\">\n" +
         "                  Cloudflare Status\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/compliance/\">\n" +
         "                  Compliance\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/gdpr/introduction/\">\n" +
         "                  GDPR\n" +
         "                </a>\n" +
         "              </li>\n" +
         "          </ul>\n" +
         "        </div>\n" +
         "        <div class=\"main-footer__menu-group\">\n" +
         "          <ul id=\"company-menu\">\n" +
         "            <li data-submenu=\"company-menu\" class=\"main-footer__menu-group__header js-toggle-footer-group\">\n" +
         "              Company\n" +
         "              <span class=\"icon icon-caret-down\"></span>\n" +
         "            </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/about-overview/\">\n" +
         "                  About Cloudflare\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"https://cloudflare.net\">\n" +
         "                  Investor Relations\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/people/\">\n" +
         "                  Our Team\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/press/\">\n" +
         "                  Press\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/careers/\">\n" +
         "                  Careers\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/internetsummit/\">\n" +
         "                  Internet Summit\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/logo/\">\n" +
         "                  Logo\n" +
         "                </a>\n" +
         "              </li>\n" +
         "              <li>\n" +
         "                <a\n" +
         "                  href=\"/network/\">\n" +
         "                  Network Map\n" +
         "                </a>\n" +
         "              </li>\n" +
         "          </ul>\n" +
         "        </div>\n" +
         "\n" +
         "    </div>\n" +
         "    <div class=\"main-footer__menu_bottom\">\n" +
         "      <div class=\"main-footer__menu_bottom__container\">\n" +
         "        <div class=\"main-footer__menu_bottom__social\">\n" +
         "          <a target=\"_blank\" rel=\"noopener\" href=\"https://www.facebook.com/Cloudflare/\"><img class=\"\" title=\"Facebook\" alt=\"Facebook\" src=\"/img/footer/facebook.svg\" /></a>\n" +
         "          <a target=\"_blank\" rel=\"noopener\" href=\"https://twitter.com/Cloudflare\"><img class=\"\" title=\"Twitter\" alt=\"Twitter\" src=\"/img/footer/twitter.svg\" /></a>\n" +
         "          <a target=\"_blank\" rel=\"noopener\" href=\"https://www.linkedin.com/company/cloudflare-inc-\"><img class=\"\" title=\"LinkedIn\" alt=\"LinkedIn\" src=\"/img/footer/linkedin.svg\" /></a>\n" +
         "          <a target=\"_blank\" rel=\"noopener\" href=\"https://www.youtube.com/cloudflare\"><img class=\"\" title=\"Youtube\" alt=\"Youtube\" src=\"/img/footer/youtube.svg\" /></a>\n" +
         "          <a target=\"_blank\" rel=\"noopener\" href=\"https://www.instagram.com/cloudflare\"><img class=\"\" title=\"Instagram\" alt=\"Instagram\" src=\"/img/footer/instagram.svg\" /></a>\n" +
         "        </div>\n" +
         "        <div class=\"main-footer__menu_bottom__copyright\">\n" +
         "          <span>&copy; 2020 Cloudflare, Inc.</span>\n" +
         "          <div>\n" +
         "              <a\n" +
         "                href=\"/privacypolicy/\">Privacy Policy</a>\n" +
         "              <a\n" +
         "                href=\"/website-terms/\">Terms of Use</a>\n" +
         "              <a\n" +
         "                href=\"/disclosure/\">Disclosure</a>\n" +
         "              <a\n" +
         "                href=\"/abuse/\">Trust & Safety</a>\n" +
         "              <a\n" +
         "                href=\"#\"                data-prevent-default=\"click\"                  class=\"ot-sdk-show-settings\">Cookie Preferences</a>\n" +
         "              <a\n" +
         "                href=\"/trademark/\">Trademark</a>\n" +
         "          </div>\n" +
         "        </div>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "  </div>\n" +
         "</footer>\n" +
         "\n" +
         "<div class=\"eu-cookie-banner js-eu-cookie-banner\">\n" +
         "  <div class=\"eu-cookie-banner__content text--white text--center\">\n" +
         "    <p>To provide you with the best possible experience on our website, we may use cookies, as described <a href='/cookie-policy/'>here</a>.<br>By clicking accept, closing this banner, or continuing to browse our websites, you consent to the use of such cookies.</p>\n" +
         "    <div class=\"grid grid--center\">\n" +
         "      <div class=\"grid__item grid__item--fourth-half\">\n" +
         "        <button style=\"max-width: 150px;\" class=\"button button--white button--inline js-accept-eu-cookie\">I accept</button>\n" +
         "      </div>\n" +
         "    </div>\n" +
         "    <div class=\"close_x js-accept-eu-cookie\"></div>\n" +
         "  </div>\n" +
         "</div>\n" +
         "\n" +
         "\n" +
         "    <script src=\"https://assets.www.cloudflare.com/js/chunk-bd70f3b236320860ab17.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-8c89500176eebf09189e.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-4e170a7795dcdfeabc08.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-b530672e4c0550535c09.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-9c30e9ee661b660e3d06.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-fbd96502c6a52eeb0417.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-1dda8891a7b481035488.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "<script src=\"https://assets.www.cloudflare.com/js/chunk-fc9a85b61864aa3014bf.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "\n" +
         "      <script async src=\"https://assets.www.cloudflare.com/js/chunk-58fe69933f04c8169814.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "\n" +
         "    <script async src=\"https://assets.www.cloudflare.com/js/chunk-b0226d6bd07f4081c5f6.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "\n" +
         "    <script async src=\"https://assets.www.cloudflare.com/js/chunk-0581e224f547ca1952b1.js\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\"></script>\n" +
         "    \n" +
         "    <script type=\"application/ld+json\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\">\n" +
         "      {\n" +
         "        \"@context\": \"http://schema.org\",\n" +
         "        \"@type\": \"Organization\",\n" +
         "        \"name\": \"cloudflare.com\",\n" +
         "        \"url\": \"http://www.cloudflare.com\",\n" +
         "        \"sameAs\": [\n" +
         "          \"http://www.facebook.com/Cloudflare\",\n" +
         "          \"http://www.twitter.com/Cloudflare\",\n" +
         "          \"http://plus.google.com/+cloudflare\",\n" +
         "          \"https://www.linkedin.com/company/cloudflare-inc-\",\n" +
         "          \"http://www.youtube.com/user/CloudflareTeam\"\n" +
         "        ]\n" +
         "      }\n" +
         "    </script>\n" +
         "    <script type=\"application/ld+json\" nonce=\"62d78a88-e86f-487e-aa40-f88fe3bb51bb\">\n" +
         "      {\n" +
         "        \"@context\": \"http://schema.org\",\n" +
         "        \"@type\": \"Corporation\",\n" +
         "        \"name\": \"Cloudflare\",\n" +
         "        \"url\": \"http://www.cloudflare.com\",\n" +
         "        \"description\": \"Cloudflare is a free global CDN and DNS provider that can speed up and protect any site online.\"\n" +
         "      }\n" +
         "    </script>\n" +
         "    \n" +
         "    \n" +
         "  </body>\n" +
         "</html>\n"

  response = HTTP::Client::Response.new(
    status,
    body,
    headers,
    status_message
  )
end
