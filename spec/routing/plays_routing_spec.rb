require 'spec_helper'

describe PlaysController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/plays" }.should route_to(:controller => "plays", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/plays/new" }.should route_to(:controller => "plays", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/plays/1" }.should route_to(:controller => "plays", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/plays/1/edit" }.should route_to(:controller => "plays", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/plays" }.should route_to(:controller => "plays", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/plays/1" }.should route_to(:controller => "plays", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/plays/1" }.should route_to(:controller => "plays", :action => "destroy", :id => "1") 
    end
  end
end
