class InstructorPolicy < ApplicationPolicy
  def show?
    user.instructor? || user.admin?
  end

  # By default, instructor/admin can do everything in the instructor namespace
  def method_missing(name, *args)
    name.to_s.end_with?("?") ? (user.instructor? || user.admin?) : super
  end

  def respond_to_missing?(name, include_private = false)
    name.to_s.end_with?("?") || super
  end
end
