class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where(seniority_id: current_user.seniority_id)
  end

  def show
   @challenge = Challenge.find(params[:id])
   @saved_tips = current_user.tips.where(challenge: @challenge)
   @tips = Tip.where(challenge: @challenge).where.not(id: @saved_tips.pluck(:id))
   @booking = Booking.new
  end

end
