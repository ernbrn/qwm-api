class InterestList < ApplicationRecord
  belongs_to :user

  has_many :works, through: :interest_list_works
end
