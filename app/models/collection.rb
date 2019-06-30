# frozen_string_literal: true

class Collection < ApplicationRecord
  belongs_to :user
  has_many :works, through: :collection_works
end
