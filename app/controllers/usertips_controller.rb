class UsertipsController < ApplicationController
  before_action :set_usertip, only: [:edit, :update]

  def new
    @usertip = Usertip.new()
    @bookings = current_user.bookings
    authorize @usertip
  end

  def create
    @usertip = Usertip.new(usertip_params)
    @usertip.user = current_user
    if @usertip.save
      redirect_to profile_path, notice: "Tip created!"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @usertip
  end

  def edit
    @bookings = current_user.bookings
    authorize @usertip
  end

  def update
    @usertip.update(usertip_params)
    redirect_to profile_path, notice: "Tip modified!"
    authorize @usertip
  end

  def destroy
    @usertip.destroy
    redirect_to profile_path, notice: "Tip deleted!"
    authorize @usertip
  end

  private

  def set_usertip
    @usertip = Usertip.find(params[:id])
  end

  def usertip_params
    params.require(:usertip).permit(:name, :description, :booking_id)
  end
end
