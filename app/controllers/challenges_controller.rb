class ChallengesController < ApplicationController
  def index
    # on veut afficher tous les challenges appatenant à la seniority du current user
    @challenges = Challenge.where(seniority_id: current_user.seniority_id)
    raise
  end

  def show
   # on veut afficher un challenge en particulier
  end

end
