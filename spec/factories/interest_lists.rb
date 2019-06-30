# frozen_string_literal: true

FactoryBot.define do
  factory :interest_list do
    name { 'MyString' }

    public { false }

    user { nil }
  end
end
