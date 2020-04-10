class WorkTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :creator_types

  has_many :creator_types
end
