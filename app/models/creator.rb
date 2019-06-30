# frozen_string_literal: true

class Creator < ApplicationRecord
  has_many :work_creators, dependent: :destroy
  has_many :works, through: :work_creators
  has_many :reviews, through: :works
  has_many :favorites, as: :favorable
  has_many :links, as: :linkable

  has_many :references_to, as: :reference_to, class_name: 'Reference'
  has_many :references, as: :referenced_by, class_name: 'Reference'

  has_many :mentioned_creators, through: :references,
                                source: :reference_to, source_type: 'Creator'

  has_many :mentioned_works, through: :references,
                             source: :reference_to, source_type: 'Work'

  has_many :creator_referrers, through: :references_to,
                               source: :referenced_by, source_type: 'Creator'

  has_many :work_referrers, through: :references_to,
                            source: :referenced_by, source_type: 'Work'
end
