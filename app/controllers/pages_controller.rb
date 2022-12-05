class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @next_seniority = current_user.seniority.next
    @past_bookings_seniority = current_user.bookings.where(status: true).select{ |booking| booking.challenge.seniority == current_user.seniority }
    @past_bookings = current_user.bookings.where(status: true)
    if @past_bookings_seniority.count == 0
      @progress = 0
    elsif @past_bookings_seniority.count == 1
      @progress = 20
    elsif @past_bookings_seniority.count == 2
      @progress = 40
    elsif @past_bookings_seniority.count == 3
      @progress = 60
    elsif @past_bookings_seniority.count == 4
      @progress = 80
    else
      @progress = 100
    end
    @remaining = 100 - @progress
    @tip = Tip.all.sample
    @usertip = Usertip.where.not(user: current_user).sample
  end

  def profile_challenge
    @on_going_bookings = current_user.bookings.where(status: false)
    # ce sont les challenges que t'as book et dont le statut est false
    @past_bookings = current_user.bookings.where(status: true)
    # ce sont les challenges que t'as book et dont le statut est true
  end

  def profile_tips
    @my_saved_tips = current_user.saved_tips + current_user.saved_user_tips
    # ce sont les tips que t'as sauvergardé (de la db ou parmis les usertips)
    @my_created_tips = current_user.usertips
    # ce sont les tips que t'as fait
  end

  def tipsindex
    @categories = Challenge.all.pluck(:category).uniq
    if params[:query].present? || params[:category].present?
      @tips = Tip.tips_search("#{params[:query]} #{params[:category]}")
      if params[:query].present?
        if params[:category].present?
          @usertips = Usertip.usertips_search("#{params[:query]}")
          @usertips.select do |tip|
            tip.booking.challenge.category == params[:category]
          end
        end
      elsif params[:query] == "" && params[:category].present?
        @usertips = Usertip.all.select { |tip| tip.booking.challenge.category == params[:category] }
      else
        @usertips = Usertip.usertips_search("#{params[:query]}")
      end
      # # @usertips = Usertip.where.not(user: current_user)
    else
      @tips = Tip.all
      @usertips = Usertip.where.not(user: current_user)
    end
  end
end
