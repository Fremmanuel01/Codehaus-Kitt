class SubmissionPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.student?
  end

  def update?
    admin_or_instructor? || record.user == user
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      elsif user.instructor?
        # A bit more complex to join, assuming challenge -> track -> cohort or user -> cohort
        # Simplest is scoping by the student's cohort matching the instructor's enrollment
        scope.joins(:user).where(users: { cohort_id: user.enrollments.select(:cohort_id) })
      else
        scope.where(user: user)
      end
    end
  end
end
