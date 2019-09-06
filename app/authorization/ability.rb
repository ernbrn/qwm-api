# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user

    abilities
  end

  private

  def abilities
    raise NotImplementedError
  end

  attr_reader :user
end
