class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @challenge = Challenge.find(params[:id])
    @booking.challenge = @challenge
    if @booking.save
      redirect_to profile_path
    else
      render challenge_path(@challenge), status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:goal, :status, :weeknumber)
  end
end
