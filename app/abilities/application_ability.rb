# frozen_string_literal: true

class ApplicationAbility
  include CanCan::Ability

  def initialize(user)
    return if user.blank?

    @user = user

    abilities
  end

  private

  attr_reader :user

  def abilities
    user.roles.each do |role|
      try("#{role.name}_abilities".to_sym)
    end
  end
end
