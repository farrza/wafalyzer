require "spec"
require "http/client"
require "logger"

require "../src/wafalyzer/**"

abstract class WafSpec
  abstract def target
  abstract def waf
  abstract def run

  def initialize
    @logger = Logger.new(STDOUT)
  end
end
