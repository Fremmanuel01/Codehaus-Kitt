class AttendancePolicy < ApplicationPolicy
  def index?
    admin_or_instructor?
  end

  def update?
    admin_or_instructor?
  end

  def create?
    user.student?
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      elsif user.instructor?
        scope.joins(:class_session).where(class_sessions: { cohort_id: user.enrollments.select(:cohort_id) })
      else
        scope.where(user: user)
      end
    end
  end
end
