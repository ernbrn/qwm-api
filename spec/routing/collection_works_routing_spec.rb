require "rails_helper"

RSpec.describe CollectionWorksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/collection_works").to route_to("collection_works#index")
    end

    it "routes to #show" do
      expect(:get => "/collection_works/1").to route_to("collection_works#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/collection_works").to route_to("collection_works#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/collection_works/1").to route_to("collection_works#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/collection_works/1").to route_to("collection_works#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/collection_works/1").to route_to("collection_works#destroy", :id => "1")
    end
  end
end
