class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    # @my_challenges = User.find(current_user.id).challenges
    # @my_bookings = User.find(current_user.id).bookings
    @on_going_bookings = User.find(current_user.id).bookings.where(status: false)
    # ce sont les challenges que t'as book et dont le statut est false
    @past_bookings = User.find(current_user.id).bookings.where(status: true)
    # ce sont les challenges que t'as book et dont le statut est true
  end
end
