class EventsController < ApplicationController
  def index
    @events = policy_scope(Event).order(start_time: :asc)
    authorize @events
  end
end
