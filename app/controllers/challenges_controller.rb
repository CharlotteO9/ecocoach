class ChallengesController < ApplicationController
  def index
    @challenges_scoped = policy_scope(Challenge)
    @challenges = Challenge.where(seniority_id: current_user.seniority_id)
  end

  def show
    @challenge = Challenge.find(params[:id])
    # @saved_tips = current_user.saved_tips.select { |st| st if st.tip.challenge == @challenge }
    # @tips = @challenge.tips - current_user.saved_tips.map(&:tip) + @challenge.usertips

    # les tips de la db que j'ai sauvagardé et qui sont sur ce challenge
    tips_saved = current_user.saved_tips.select { |st| st if st.tip.challenge == @challenge }
    # les tips des users que j'ai sauvagardé et qui sont sur ce challenge
    user_tips_saved = current_user.saved_user_tips.select { |sut| sut if sut.usertip.booking.challenge == @challenge }
    # tous les saved tips (db et user) de ce challenge
    @all_saved_tips = tips_saved + user_tips_saved
    # les tips que j'ai pas sauvagardé et qui sont sur ce challenge
    @tips = @challenge.tips + @challenge.usertips - @all_saved_tips.map(&:tip)

    @booking = Booking.new
    authorize @challenge
  end
end
