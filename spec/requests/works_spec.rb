# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Works', type: :request do
  describe 'GET /works' do
    it 'works! (now write some real specs)' do
      get works_path
      expect(response).to have_http_status(:ok)
    end
  end
end
