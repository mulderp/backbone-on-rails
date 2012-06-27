require 'rails'

module RSpecRails
  class Application < ::Rails::Application
  end
end

require 'rspec'
require 'ammeter/init'

RSpec.configure do |config|
  # configure rspec
    config.mock_with :mocha  
end       
