class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @next_seniority = current_user.seniority.next
    @on_going_bookings = current_user.bookings.where(status: false)
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
    @my_created_tips = Usertip.where(user: current_user)
    # ce sont les tips que t'as fait
  end

  def tipsindex
    @categories = Challenge.all.pluck(:category).uniq

    if params[:search]
      category_param = (x = params.dig(:search, :category)).empty? ? @categories : x
      @tips = Tip.left_outer_joins(:challenge)
                 .where(challenge: { category: category_param })
                 .where('tips.name ILIKE :query OR tips.description ILIKE :query', query: "%#{params.dig(:search, :query)}%")
      @usertips = Usertip.includes(booking: :challenge)
                         .where(challenge: { category: category_param })
                         .where('usertips.name ILIKE :query OR usertips.description ILIKE :query', query: "%#{params.dig(:search, :query)}%")
                         .where.not(user: current_user)
    else
      @tips = Tip.all
      @usertips = Usertip.where.not(user: current_user)
    end

    respond_to do |format|
      format.html
      format.json {
        render json: {
          html: render_to_string(partial: 'pages/tips_list', locals: { tips: @tips, usertips: @usertips }, formats: :html)
        }
      }
    end
  end
end
