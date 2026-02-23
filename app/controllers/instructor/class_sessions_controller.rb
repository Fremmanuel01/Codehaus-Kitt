class Instructor::ClassSessionsController < Instructor::ApplicationController
  def index
    @class_sessions = policy_scope(ClassSession)
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
