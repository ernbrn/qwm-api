# frozen_string_literal: true

FactoryBot.define do
  factory :rating do
    like { false }
    severity { 1 }
  end
end
