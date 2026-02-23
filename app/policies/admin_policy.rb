class AdminPolicy < ApplicationPolicy
  def show?
    user.admin?
  end

  # By default, admin can do everything in the admin namespace
  def method_missing(name, *args)
    name.to_s.end_with?("?") ? user.admin? : super
  end

  def respond_to_missing?(name, include_private = false)
    name.to_s.end_with?("?") || super
  end
end
