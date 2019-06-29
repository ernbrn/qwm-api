class Creator < ApplicationRecord
  has_many :work_creators, dependent: :destroy
  has_many :works, through: :work_creators
  has_many :reviews, through: :works, dependent: :destroy
  has_many :favorites, as: :favorable, dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy

  has_many :references_to, as: :reference_to, class_name: 'Reference', dependent: :destroy
  has_many :references, as: :referenced_by, class_name: 'Reference', dependent: :destroy

  has_many :mentioned_creators, through: :references,
           source: :reference_to, source_type: 'Creator',
           dependent: :destroy

  has_many :mentioned_works, through: :references,
           source: :reference_to, source_type: 'Work',
           dependent: :destroy

  has_many :creator_referrers, through: :references_to,
           source: :referenced_by, source_type: 'Creator',
           dependent: :destroy

  has_many :work_referrers, through: :references_to,
           source: :referenced_by, source_type: 'Work',
           dependent: :destroy
end
