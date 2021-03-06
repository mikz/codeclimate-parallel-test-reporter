require 'code_climate/test_reporter'
require 'code_climate/parallel/test_reporter/configuration'
require 'code_climate/parallel/test_reporter/formatter'

CodeClimate::TestReporter.configure do |config|
  config.parallel = true
end

module CodeClimate
  module TestReporter
    class Formatter
      prepend Parallel::Formatter
    end
  end
end
