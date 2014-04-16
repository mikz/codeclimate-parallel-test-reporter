require 'code_climate/test_reporter/ci'
require 'code_climate/test_reporter/formatter'

module CodeClimate
  module Parallel
    module Formatter
      def partial?
        CodeClimate::TestReporter.configuration.parallel
      end
    end
  end
end

