require 'rails/generators'
require 'spec_helper'

require_relative "../../lib/generators/backbone/install/install_generator.rb"


describe Backbone::Generators::InstallGenerator do

  # Tell the generator where to put its output (what it thinks of as Rails.root)
  destination "tmp/rails_app"

  # use clean app: rails new rails_app --skip-gemfil --skip-git --skip-bundle --skip-active-record --no-production
  before do
    prepare_destination
    copy_rails_app
  end

  describe "parse_existing_lib" do
    it "returns libs defined in manifest" do
      gen = generator %w(posts)
    #  gen.should_receive :create_model_spec
    #  gen.should_receive :create_fixture_file
      capture(:stdout) { gen.invoke_all }
      generator.parse_existing_lib.should == 1
    end
  end

end
