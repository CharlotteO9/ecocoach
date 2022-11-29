class UsertipsController < ApplicationController
before_action :set_booking, only: [:new, :create]
before_action :set_usertip, only: [:edit, :update]

  def new
    @usertip = Usertip.new()
  end

  def create
    @usertip = Usertip.new(usertip_params)
    @usertip.booking = @booking
    @usertip.user = current_user
    if @usertip.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @usertip.update(usertip_params)
    redirect_to root_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_usertip
    @usertip = Usertip.find(params[:id])
  end
  def usertip_params
    params.require(:usertip).permit(:name, :description)
  end

end
