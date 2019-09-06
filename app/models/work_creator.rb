class WorkCreator < ApplicationRecord
  belongs_to :work
  belongs_to :creator

  validates :work, presence: true
  validates :creator, presence: true
end
