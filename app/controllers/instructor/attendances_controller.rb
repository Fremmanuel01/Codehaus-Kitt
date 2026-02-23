class Instructor::AttendancesController < Instructor::ApplicationController
  def index
    @attendances = policy_scope(Attendance)
  end

  def update
  end
end
