class LecturePolicy < ApplicationPolicy
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
        # Instructor sees lectures for cohorts they are enrolled in
        scope.where(cohort_id: user.enrollments.select(:cohort_id))
      else
        # Student sees lectures for their own cohort
        scope.where(cohort_id: user.cohort_id)
      end
    end
  end
end
