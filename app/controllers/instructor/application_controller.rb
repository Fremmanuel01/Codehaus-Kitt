class Instructor::ApplicationController < ::ApplicationController
  before_action :verify_instructor

  private

  def verify_instructor
    authorize :instructor_dashboard, :show?, policy_class: InstructorPolicy
  end
end
