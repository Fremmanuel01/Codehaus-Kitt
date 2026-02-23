class ClassSessionsController < ApplicationController
  def index
    @class_sessions = policy_scope(ClassSession)
  end
end
