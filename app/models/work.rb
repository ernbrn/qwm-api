class Work < ApplicationRecord
  belongs_to :contributor, class_name: 'User'
  has_many :creators, through: :work_creators
  has_many :reviews
end
