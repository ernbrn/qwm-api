class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :jwt_authenticatable, jwt_revocation_strategy: ::JwtBlacklist

  has_many :interest_lists
  has_many :reviews
  has_many :ratings
  has_many :favorites

  has_many :favorite_works, through: :favorites,
           source: :favorable, source_type: 'Work'

  has_many :favorite_creators, through: :favorites,
           source: :favorable, source_type: 'Creator'

  has_one :collection
end
