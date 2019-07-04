# frozen_string_literal: true

module AuthorizedResource
  extend ActiveSupport::Concern

  def current_ability
    @current_ability ||= ability
  end

  private

  def ability
    return composed_ability if defined?(self.class::ABILITIES)

    ability_class.new(current_user)
  end

  def resource_name
    controller_name.singularize
  end

  def resource
    instance_variable_get(:"@#{resource_name}")
  end

  def composed_ability
    Ability.new(current_user).tap do |ability|
      self.class::ABILITIES.each { |ability_class| ability.merge(ability_class.new(current_user)) }
    end
  end

  def ability_class
    derive_from_resource_name || ::Ability
  end

  def derive_from_resource_name
    "::_#{resource_name}_ability".classify.safe_constantize
  end
end
