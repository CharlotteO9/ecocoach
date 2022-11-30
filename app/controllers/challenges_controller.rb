class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.where(seniority_id: current_user.seniority_id)
  end

  def show
   @challenge = Challenge.find(params[:id])
   @saved_tips = current_user.saved_tips.select { |st| st if st.tip.challenge == @challenge }
   @tips = @challenge.tips - current_user.saved_tips.map(&:tip)
   @booking = Booking.new
  end
end
