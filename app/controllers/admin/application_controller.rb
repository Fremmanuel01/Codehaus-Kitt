class Admin::ApplicationController < ApplicationController
  before_action :verify_admin

  private

  def verify_admin
    authorize :admin_dashboard, :show?, policy_class: AdminPolicy
  end
end
