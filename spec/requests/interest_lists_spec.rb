require 'rails_helper'

RSpec.describe "InterestLists", type: :request do
  describe "GET /interest_lists" do
    it "works! (now write some real specs)" do
      get interest_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
