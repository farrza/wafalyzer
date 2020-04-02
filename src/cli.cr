require "option_parser"

require "./wafalyzer"

OptionParser.parse do |parser|
  parser.banner = BANNER
  parser.on "-v", "--version", "Show version" do
    puts "version 1.0"
    exit
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
  parser.on "-t URL", "--target=URL", "Analyze specified url" do |url|
    puts BANNER
    Wafalyzer::Analyze.target(url)
    exit
  end
end
