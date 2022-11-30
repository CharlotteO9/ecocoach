class ChallengesController < ApplicationController
  def index
    @challenges_scoped = policy_scope(Challenge)
    @challenges = Challenge.where(seniority_id: current_user.seniority_id)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @tips = Tip.where(challenge: @challenge)
    authorize @challenge
    @booking = Booking.new
  end
end
