# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'InterestListWorks', type: :request do
  describe 'GET /interest_list_works' do
    it 'works! (now write some real specs)' do
      get interest_list_works_path
      expect(response).to have_http_status(:ok)
    end
  end
end
