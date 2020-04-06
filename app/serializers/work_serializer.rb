class WorkSerializer < ActiveModel::Serializer
  attributes :id, :title

  belongs_to :contributor
  belongs_to :work_type
  has_many :creators
end
