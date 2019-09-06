# frozen_string_literal: true

class ResourceAuthorization < Ability
  def initialize(user)
    @user = user

    guest_permissions
    authorization
  end

  private

  def guest_permissions
    guest_permissions = "#{self.class}::_guest".classify.safe_constantize
    return unless guest_permissions

    merge(guest_permissions.new)
  end

  def authorization
    return if user.blank?

    user.roles.each do |role|
      role_class = "#{self.class}::_#{role.name}".classify.safe_constantize
      next unless role_class

      merge(role_class.new(user))
    end
  end
end
