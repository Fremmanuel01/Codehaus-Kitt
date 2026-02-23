class Instructor::SubmissionsController < Instructor::ApplicationController
  def index
    @submissions = policy_scope(Submission)
  end

  def show
  end

  def update
  end
end
