require 'code_climate/test_reporter/configuration'

module CodeClimate
  module Parallel
    module Configuration
      attr_accessor :parallel
    end
  end

  TestReporter::Configuration.include(Parallel::Configuration)
end


