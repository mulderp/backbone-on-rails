require 'rails/generators'
require 'spec_helper'

require_relative "../../lib/generators/backbone/install/install_generator.rb"


describe Backbone::Generators::InstallGenerator do

  destination File.expand_path("../../../tmp", __FILE__)

  # use clean app: rails new rails_app --skip-gemfile --skip-git --skip-bundle --skip-active-record --no-production
  before do
    prepare_destination
    copy_rails_app
  end

  it "returns libs defined in manifest" do
    puts run_generator
  #  gen.should_receive :create_model_spec
  #  gen.should_receive :create_fixture_file
    # capture(:stdout) { gen.invoke_all }
    # gen.parse_existing_lib.should == 1
    # puts gen.inspect
    
  end

end
