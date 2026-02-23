class ClassSessionPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      elsif user.instructor?
        scope.where(cohort_id: user.enrollments.select(:cohort_id))
      else
        scope.where(cohort_id: user.cohort_id)
      end
    end
  end
end
