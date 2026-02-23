class ChallengesController < ApplicationController
  def index
    @tracks = policy_scope(Track).includes(:challenges)
    authorize @tracks
  end

  def show
    @challenge = Challenge.find(params[:id])
    authorize @challenge
    @tracks = policy_scope(Track).includes(:challenges)
  end
end
