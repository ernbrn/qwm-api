# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'WorkTypes', type: :request do
  describe 'GET /work_types' do
    it 'works! (now write some real specs)' do
      get work_types_path
      expect(response).to have_http_status(:ok)
    end
  end
end
