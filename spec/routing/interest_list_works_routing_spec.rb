require "rails_helper"

RSpec.describe InterestListWorksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/interest_list_works").to route_to("interest_list_works#index")
    end

    it "routes to #show" do
      expect(:get => "/interest_list_works/1").to route_to("interest_list_works#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/interest_list_works").to route_to("interest_list_works#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/interest_list_works/1").to route_to("interest_list_works#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/interest_list_works/1").to route_to("interest_list_works#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interest_list_works/1").to route_to("interest_list_works#destroy", :id => "1")
    end
  end
end
