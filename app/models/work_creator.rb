class WorkCreator < ApplicationRecord
  belongs_to :work
  belongs_to :creator

  validates_presence_of :work
  validates_presence_of :creator
end
