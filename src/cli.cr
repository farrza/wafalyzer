require "option_parser"

require "./wafalyzer"

waf_name = ""
manufacturer = ""
website = ""

OptionParser.parse do |parser|
  parser.banner = BANNER
  parser.on "-v", "--version", "Show version" do
    puts "version 0.1.0"
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    puts "\n"
    puts "    Starting analysis:"
    puts "    wafalyzer https://www.target1.com https://www.target2.com"
    puts "\n"
    puts "    NOTES:"
    puts "    - Full URL required"
    puts "    - One or more targets separated by whitespace"
    puts "\n"
    puts "    Adding new WAFS:"
    puts "    wafalyzer -n NewWafName -m NewWafManufacturer -w NewWafManufacturerWebsite -u https://www.newwafuser.com"
    puts "\n\n"
    exit
  end
  parser.on "-n NAME", "--name=NAME", "WAF Name" do |name|
    waf_name = name
  end
  parser.on "-m NAME", "--manufacturer=NAME", "WAF Manufacturer" do |name|
    manufacturer = name
  end
  parser.on "-w URL", "--website=URL", "WAF Manufacturer Website" do |url|
    website = url
  end
  parser.on "-u USER", "--user=USER", "WAF User" do |user|
    puts BANNER
    puts "\n\n\n\n"
    if !waf_name.empty?
      Wafalyzer::Builder.new(waf_name, manufacturer, website, user)
    else
      puts "\e[31m[✘] User not provided!\e[0m"
    end
  end
  parser.unknown_args do |targets, b|
    puts BANNER if !targets.empty?
    puts "\n\n"
    targets.each do |target|
      puts "\n\n"
      Wafalyzer::Analyze.target(target)
    end
  end
end
