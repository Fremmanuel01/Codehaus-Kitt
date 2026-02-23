class AttendancesController < ApplicationController
  before_action :set_class_session

  def create
    @attendance = @class_session.attendances.new(user: current_user)
    authorize @attendance

    # mark as present if session is open
    if @class_session.status == "open"
      @attendance.status = "present"
      if @attendance.save
        redirect_to dashboard_path, notice: "Attendance marked successfully!"
      else
        redirect_to class_sessions_path, alert: "Could not mark attendance."
      end
    else
      redirect_to class_sessions_path, alert: "This session is not open for attendance."
    end
  end

  private

  def set_class_session
    @class_session = ClassSession.find(params[:class_session_id])
  end
end
