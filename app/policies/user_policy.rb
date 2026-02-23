class UserPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def update_profile?
    record == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
