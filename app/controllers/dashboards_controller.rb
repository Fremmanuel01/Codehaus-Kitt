class DashboardsController < ApplicationController
  def show
    authorize :dashboard, :show?
    @current_module = "Ruby on Rails MVP"
    @challenges = policy_scope(Challenge).limit(3)
    @today_lecture = policy_scope(Lecture).find_by(date: Date.current) || policy_scope(Lecture).last
    @today_session = current_user.cohort&.class_sessions&.find_by(date: Date.today)
    @attendance = current_user.attendances.find_by(class_session: @today_session) if @today_session
  end
end
