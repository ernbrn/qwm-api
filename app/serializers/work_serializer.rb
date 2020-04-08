class WorkSerializer < ActiveModel::Serializer
  attributes :id, :title, :work_type

  belongs_to :contributor
  belongs_to :work_type
  has_many :creators
end
