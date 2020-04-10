class CreatorTypeSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :work_type
end
