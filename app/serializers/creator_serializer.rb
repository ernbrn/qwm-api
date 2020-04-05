class CreatorSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :works
end
