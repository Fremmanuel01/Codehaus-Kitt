# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def admin_or_instructor?
    user.admin? || user.instructor?
  end

  def index?
    admin_or_instructor?
  end

  def show?
    admin_or_instructor?
  end

  def create?
    admin_or_instructor?
  end

  def new?
    create?
  end

  def update?
    admin_or_instructor?
  end

  def edit?
    update?
  end

  def destroy?
    admin_or_instructor?
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NoMethodError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
