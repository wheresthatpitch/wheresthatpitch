ENV["RAILS_ENV"] ||= "test"

require "simplecov"
SimpleCov.start "rails"
Rails.application.eager_load!

require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  # Run tests in parallel with specified workers
  parallelize(workers: 1)

  # Add more helper methods to be used by all tests here...
end
