class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @on_going_bookings = User.find(current_user.id).bookings.where(status: false)
    # ce sont les challenges que t'as book et dont le statut est false
    @past_bookings = User.find(current_user.id).bookings.where(status: true)
    # ce sont les challenges que t'as book et dont le statut est true
    @next_seniority = current_user.seniority.next
    @my_created_tips = Usertip.where(user: current_user)
    # ce sont les tips que t'as fait
    @all_my_saved_tips = current_user.tips + Usertip.where.not(user: current_user)
    # ce sont les tips que t'as sauvergardé (de la db ou parmis les usertips)
  end

  def tipsindex
    @categories = Challenge.all.pluck(:category).uniq
    if params[:query].present? || params[:category].present?
      @tips = Tip.tips_search("#{params[:query]} #{params[:category]}")
    else
      @tips = Tip.all
    end
  end
end
