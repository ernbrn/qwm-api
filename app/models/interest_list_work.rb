# frozen_string_literal: true

class InterestListWork < ApplicationRecord
  belongs_to :interest_list
  belongs_to :work
end
