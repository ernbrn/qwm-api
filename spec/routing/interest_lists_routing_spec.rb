require "rails_helper"

RSpec.describe InterestListsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/interest_lists").to route_to("interest_lists#index")
    end

    it "routes to #show" do
      expect(:get => "/interest_lists/1").to route_to("interest_lists#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/interest_lists").to route_to("interest_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/interest_lists/1").to route_to("interest_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/interest_lists/1").to route_to("interest_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interest_lists/1").to route_to("interest_lists#destroy", :id => "1")
    end
  end
end
