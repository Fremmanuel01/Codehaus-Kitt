class Instructor::ChallengesController < Instructor::ApplicationController
  def index
    @challenges = policy_scope(Challenge)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
