# frozen_string_literal: true

class WorkTypeAuthorization < ResourceAuthorization
  RESOURCE_CLASS = WorkType

  class Guest < GuestAbility
    def abilities
      can :read, RESOURCE_CLASS
    end
  end

  class Admin < RoleAbility
    def abilities
      can :manage, RESOURCE_CLASS
    end
  end

  class Moderator < RoleAbility
    def abilities
      can :read, RESOURCE_CLASS
    end
  end
end
