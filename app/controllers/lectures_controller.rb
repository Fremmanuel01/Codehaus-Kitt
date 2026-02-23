class LecturesController < ApplicationController
  def index
    @lectures = policy_scope(Lecture).includes(:teacher).order(date: :desc)
    authorize @lectures
  end

  def show
    @lecture = Lecture.find(params[:id])
    authorize @lecture
  end
end
