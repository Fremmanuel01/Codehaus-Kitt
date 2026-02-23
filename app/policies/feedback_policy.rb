class FeedbackPolicy < ApplicationPolicy
  def create?
    user.student?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
