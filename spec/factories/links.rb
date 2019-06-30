# frozen_string_literal: true

FactoryBot.define do
  factory :link do
    link { 'MyString' }
    link_text { 'MyString' }
    linkable { nil }
  end
end
