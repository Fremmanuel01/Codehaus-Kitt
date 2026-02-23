class Instructor::LecturesController < Instructor::ApplicationController
  def index
    @lectures = policy_scope(Lecture)
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
