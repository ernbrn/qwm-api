# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'References', type: :request do
  describe 'GET /references' do
    it 'works! (now write some real specs)' do
      get references_path
      expect(response).to have_http_status(:ok)
    end
  end
end
