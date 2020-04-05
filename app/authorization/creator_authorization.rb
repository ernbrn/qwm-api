# frozen_string_literal: true

class CreatorAuthorization < ResourceAuthorization
  class Guest < GuestAbility
    def abilities
      can :read, Creator
      can :manage, Creator
    end
  end

  class Admin < RoleAbility
    def abilities
    end
  end

  class Moderator < RoleAbility
    def abilities
      can :read, Creator
    end
  end
end
