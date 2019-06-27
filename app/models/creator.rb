class Creator < ApplicationRecord
  has_many :work_creators, dependent: :destroy
  has_many :works, through: :work_creators
  has_many :reviews, through: :works
end
