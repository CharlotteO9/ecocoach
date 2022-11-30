class SavedTipsController < ApplicationController
  def create
    @saved_tip = SavedTip.new
    @tip = Tip.find(params[:tip_id])
    @saved_tip.tip = @tip
    @saved_tip.user = current_user
    if @saved_tip.save
      redirect_to request.referer, notice: "It's saved !"
    else
      redirect_to request.referer, status: :unprocessable_entity
    end
  end

  def destroy
    @saved_tip = SavedTip.find(params[:id])
    @saved_tip.destroy
    redirect_to request.referer, notice: "It's unsaved !"
  end
end
