require "option_parser"
require "uri"

require "./wafalyzer"

OptionParser.parse do |parser|
  parser.banner = BANNER
  parser.on "-v", "--version", "Show version" do
    puts "version 1.0"
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
  parser.unknown_args do |targets, b|
    puts BANNER
    targets.each do |target|
      puts "\n\n"
      Wafalyzer::Analyze.target(target)
    end
  end
end
