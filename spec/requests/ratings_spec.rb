# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Ratings', type: :request do
  describe 'GET /ratings' do
    it 'works! (now write some real specs)' do
      get ratings_path
      expect(response).to have_http_status(:ok)
    end
  end
end
