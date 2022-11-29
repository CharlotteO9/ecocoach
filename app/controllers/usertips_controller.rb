class UsertipsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @usertip = Usertip.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @usertip = Usertip.new(usertip_params)
    @usertip.booking = @booking
    @usertip.user = current_user
    if @usertip.save
      redirect_to booking_path(@booking)
    else
      render "bookings/new", status: :unprocessable_entity
    end
  end

  def edit
    @usertip = Usertip.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:booking_id])
    @usertip.update(params[:usertip])
    redirect_to booking_path(@booking)
  end

  private

  def usertip_params
    params.require(:usertip).permit(:name, :description)
  end

end
