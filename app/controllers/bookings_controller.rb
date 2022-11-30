class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @challenge = Challenge.find(params[:challenge_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @challenge = Challenge.find(params[:challenge_id])
    @booking.challenge = @challenge
    @booking.status = false
    if @booking.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
  end

  def show
    authorize @booking
    @retry_challenge = Challenge.find(@booking.challenge_id)
  end

  def edit
    authorize @booking
  end

  def update
    @booking.update(booking_params)
    redirect_to profile_path
    authorize @booking
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to profile_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:goal, :status)
  end
end
