require 'rails/generators'
require 'spec_helper'

require_relative "../../lib/generators/backbone/install/install_generator.rb"


describe Backbone::Generators::InstallGenerator do

  destination File.expand_path("../../../tmp", __FILE__)

  # use clean app: rails new rails_app --skip-gemfile --skip-git --skip-bundle --skip-active-record --no-production
  before do
    prepare_destination
    copy_assets_file
  end

  it "returns libs defined in manifest" do
    run_generator

    manifest_path = File.join(destination_root, "app/assets/javascripts/application.js")
    manifest = File.open(manifest_path)
    manifest_lines = manifest.readlines
    manifest_lines.should include( "//= require backbone\n")
    manifest_lines.should include( "//= require_tree .//models\n")
    
  end

end

def copy_assets_file
  destination = File.join(destination_root, "app/assets/javascripts")
  applicationjs = File.expand_path("./spec/rails_app/app/assets/javascripts/application.js")
  FileUtils.mkdir_p(destination)
  FileUtils.cp applicationjs, destination 
end
