# frozen_string_literal: true

class Reference < ApplicationRecord
  belongs_to :reference_to, polymorphic: true
  belongs_to :referenced_by, polymorphic: true
end
