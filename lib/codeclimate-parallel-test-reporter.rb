if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  require 'code_climate/parallel/test_reporter'
  CodeClimate::TestReporter.start
end
