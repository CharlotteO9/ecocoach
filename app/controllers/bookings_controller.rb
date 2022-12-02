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
      redirect_to profile_path, notice: "Challenge added!"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
  end

  def show
    authorize @booking
    @retry_challenge = Challenge.find(@booking.challenge_id)
    # les tips de la db que j'ai sauvagardé et qui sont sur ce challenge
    tips_saved = current_user.saved_tips.select { |st| st if st.tip.challenge == @retry_challenge }
    # les tips des users que j'ai sauvagardé et qui sont sur ce challenge
    user_tips_saved = current_user.saved_user_tips.select { |sut| sut if sut.usertip.booking.challenge == @retry_challenge }
    # tous les saved tips (db et user) de ce challenge
    @all_saved_tips = tips_saved + user_tips_saved
    # les tips que j'ai pas sauvagardé et qui sont sur ce challenge
    @tips = @retry_challenge.tips + @retry_challenge.usertips - @all_saved_tips.map(&:tip)
  end

  def edit
    authorize @booking
  end

  def update
    @booking.update(booking_params)
    redirect_to profile_path, notice: "Challenge completed!"
    authorize @booking
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to profile_path, notice: "Challenge removed!"
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:goal, :status)
  end
end
