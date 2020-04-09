require "option_parser"

require "./wafalyzer"

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
