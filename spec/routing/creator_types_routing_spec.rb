require "rails_helper"

RSpec.describe CreatorTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/creator_types").to route_to("creator_types#index")
    end

    it "routes to #show" do
      expect(:get => "/creator_types/1").to route_to("creator_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/creator_types").to route_to("creator_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/creator_types/1").to route_to("creator_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/creator_types/1").to route_to("creator_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/creator_types/1").to route_to("creator_types#destroy", :id => "1")
    end
  end
end
