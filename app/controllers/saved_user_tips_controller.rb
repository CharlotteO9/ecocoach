class SavedUserTipsController < ApplicationController
  def create
    @saved_user_tip = SavedUserTip.new
    @tip = Tip.find(params[:tip_id])
    @saved_user_tip.tip = @tip
    @saved_user_tip.user = current_user
    if @saved_user_tip.save
      redirect_to request.referer, notice: "Tip saved!"
    else
      redirect_to request.referer, status: :unprocessable_entity
    end
    authorize @saved_user_tip
  end

  def destroy
    @saved_user_tip = SavedTip.find(params[:id])
    authorize @saved_user_tip
    @saved_user_tip.destroy
    redirect_to request.referer, notice: "Tips unsaved!"
  end

end
