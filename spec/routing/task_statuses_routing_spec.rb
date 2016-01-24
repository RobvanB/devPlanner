require "rails_helper"

RSpec.describe TaskStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/task_statuses").to route_to("task_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/task_statuses/new").to route_to("task_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/task_statuses/1").to route_to("task_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/task_statuses/1/edit").to route_to("task_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/task_statuses").to route_to("task_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/task_statuses/1").to route_to("task_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/task_statuses/1").to route_to("task_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/task_statuses/1").to route_to("task_statuses#destroy", :id => "1")
    end

  end
end
