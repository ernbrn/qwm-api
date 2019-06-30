# frozen_string_literal: true

class WorkCreator < ApplicationRecord
  belongs_to :work
  belongs_to :creator
end
