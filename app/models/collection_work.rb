# frozen_string_literal: true

class CollectionWork < ApplicationRecord
  belongs_to :work
  belongs_to :collection
end
