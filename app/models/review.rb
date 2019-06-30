# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :work

  validates_presence_of :user
  validates_presence_of :work
end
