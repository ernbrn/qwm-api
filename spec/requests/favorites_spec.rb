# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Favorites', type: :request do
  describe 'GET /favorites' do
    it 'works! (now write some real specs)' do
      get favorites_path
      expect(response).to have_http_status(:ok)
    end
  end
end
