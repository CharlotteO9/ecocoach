class ChallengesController < ApplicationController
  def index
    @challenges_scoped = policy_scope(Challenge)
    @challenges = Challenge.where(seniority_id: current_user.seniority_id)
  end

  def show
    @challenge = Challenge.find(params[:id])

    # les tips de la db que j'ai sauvagardé et qui sont sur ce challenge
    tips_saved = current_user.saved_tips.select { |st| st if st.tip.challenge == @challenge }
    # les tips des users que j'ai sauvagardé et qui sont sur ce challenge
    user_tips_saved = current_user.saved_user_tips.select { |sut| sut if sut.usertip.booking.challenge == @challenge }
    # tous les saved tips (db et user) de ce challenge
    @all_saved_tips = tips_saved + user_tips_saved
    # les tips que j'ai pas sauvagardé et qui sont sur ce challenge
    @tips = @challenge.tips + @challenge.usertips - tips_saved.map(&:tip) - user_tips_saved.map(&:usertip)

    @booking = Booking.new
    authorize @challenge
  end
end
