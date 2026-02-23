class ClassmatesController < ApplicationController
  def index
    @classmates = policy_scope(User).where(cohort: current_user.cohort)
    authorize @classmates
  end

  def update_profile
    authorize current_user, :update_profile?
    if current_user.update(user_params)
      redirect_to classmates_path, notice: "Profile updated successfully."
    else
      redirect_to classmates_path, alert: "Profile update failed."
    end
  end

  private

  def user_params
    params.require(:user).permit(:bio, :avatar_url)
  end
end
