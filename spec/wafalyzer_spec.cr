require "./spec_helper"
require "./waf_specs/*"

WAF_SPECS = [
  AeSecureSpec,
  AireeSpec,
  AirlockSpec,
  AlertLogicSpec,
  AliYunDunSpec,
  AnquanbaoSpec,
  AnYuSpec,
  ApproachSpec,
  ArmorSpec,
  ArvanCloudSpec,
  AspaSpec,
  AspNetGenSpec,
  AstraSpec,
  AWSSpec,
  AzionSpec,
  CloudFlareSpec,
  CerberSpec,
  WebKnightSpec,
]

{% for waf_spec in WAF_SPECS %}
  {{ waf_spec }}.new.run
{% end %}
