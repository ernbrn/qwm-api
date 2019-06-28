require 'rails_helper'

RSpec.describe "CollectionWorks", type: :request do
  describe "GET /collection_works" do
    it "works! (now write some real specs)" do
      get collection_works_path
      expect(response).to have_http_status(200)
    end
  end
end
