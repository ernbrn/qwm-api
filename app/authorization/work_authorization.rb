# frozen_string_literal: true

class WorkAuthorization < ResourceAuthorization
  RESOURCE_CLASS = Work

  class Guest < GuestAbility
    def abilities
      can :read, RESOURCE_CLASS
      can :manage, RESOURCE_CLASS
    end
  end

  class Admin < RoleAbility
    def abilities
    end
  end

  class Moderator < RoleAbility
    def abilities
      can :read, RESOURCE_CLASS
    end
  end
end
