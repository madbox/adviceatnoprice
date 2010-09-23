require 'spec_helper'

describe AdvicesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/advices" }.should route_to(:controller => "advices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/advices/new" }.should route_to(:controller => "advices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/advices/1" }.should route_to(:controller => "advices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/advices/1/edit" }.should route_to(:controller => "advices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/advices" }.should route_to(:controller => "advices", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/advices/1" }.should route_to(:controller => "advices", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/advices/1" }.should route_to(:controller => "advices", :action => "destroy", :id => "1") 
    end
  end
end
