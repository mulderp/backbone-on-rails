require 'rails/generators'
require_relative "../../../../../lib/generators/backbone/install/install_generator.rb"


describe Backbone::Generators::InstallGenerator do

  let(:generator) { generator = Backbone::Generators::InstallGenerator.new }

  describe "inject_backbone" do
    it "puts require_tree . at bottom of file" do
      generator.inject_backbone.should == 1
    end
  end

  describe "assets_javascript_libs" do
    it "returns hash with libs to be put in manifest" do
      generator.assets_javascript_libs.should == {:vendor=>["underscore", "backbone"], :backbone_mvc=>["../templates/", "./models/", "./collections/", "./views/", "./routers/"], :existing_libs=>[]}
    end
  end

end
