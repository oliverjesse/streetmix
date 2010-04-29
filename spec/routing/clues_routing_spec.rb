require 'spec_helper'

describe CluesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/clues" }.should route_to(:controller => "clues", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/clues/new" }.should route_to(:controller => "clues", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/clues/1" }.should route_to(:controller => "clues", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/clues/1/edit" }.should route_to(:controller => "clues", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/clues" }.should route_to(:controller => "clues", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/clues/1" }.should route_to(:controller => "clues", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/clues/1" }.should route_to(:controller => "clues", :action => "destroy", :id => "1") 
    end
  end
end
