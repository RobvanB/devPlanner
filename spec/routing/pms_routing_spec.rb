require "rails_helper"

RSpec.describe PmsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pms").to route_to("pms#index")
    end

    it "routes to #new" do
      expect(:get => "/pms/new").to route_to("pms#new")
    end

    it "routes to #show" do
      expect(:get => "/pms/1").to route_to("pms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pms/1/edit").to route_to("pms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pms").to route_to("pms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pms/1").to route_to("pms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pms/1").to route_to("pms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pms/1").to route_to("pms#destroy", :id => "1")
    end

  end
end
