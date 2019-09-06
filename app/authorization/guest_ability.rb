# frozen_string_literal: true

class GuestAbility < Ability
  def initialize
    abilities
  end

  private

  def abilities
    raise NotImplementedError
  end
end
