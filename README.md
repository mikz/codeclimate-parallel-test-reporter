# CodeClimate Parallel Test Reporter

If you run tests on one machine in parallel or in several frameworks sequencialy, this might be gem for you.

## Installation

Add this line to your application's Gemfile:

    gem 'codeclimate-parallel-test-reporter', group: :test
    
And this to the top of your `(spec|test)_helper.rb`:

    require 'codeclimate-parallel-test-reporter'

Also you should **remove the original code climate integration**:

    require "codeclimate-test-reporter"
    CodeClimate::TestReporter.start


Because parallel test reporter is loading and starting everything automatically.

## Usage

Run your test suite `rake ci` or how else you do:

    $ bundle exec codeclimate-parallel-test-reporter rake ci

It expects `CODECLIMATE_REPO_TOKEN` in your ENV.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/codeclimate-parallel-test-reporter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
