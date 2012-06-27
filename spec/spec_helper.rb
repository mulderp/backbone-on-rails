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

def copy_rails_app
  FileUtils.mkdir_p(destination_root)
  FileUtils.cp_r "spec/rails_app", "tmp"
end
