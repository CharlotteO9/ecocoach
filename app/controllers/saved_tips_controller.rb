class SavedTipsController < ApplicationController
  def create
    @saved_tip = SavedTip.new
    @tip = Tip.find(params[:tip_id])
    @saved_tip.tip = @tip
    @saved_tip.user = current_user
    authorize @saved_tip
    respond_to do |format|
      if @saved_tip.save
        format.json { render json: {
          html: render_to_string(partial: 'tips/card', locals: { tip: @tip }, formats: :html)
         } }
        format.html { redirect_to request.referer, notice: "Tip saved!" }
      else
        format.json { render json: { errors: @saved_tip.errors.full_messages.join(', ') } }
        format.html { redirect_to request.referer, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @saved_tip = SavedTip.find(params[:id])
    @tip = @saved_tip.tip
    authorize @saved_tip
    @saved_tip.destroy
    respond_to do |format|
      format.json { render json: {
         html: render_to_string(partial: 'tips/card', locals: { tip: @tip }, formats: :html)
       } }
      format.html { redirect_to request.referer, notice: "Tip unsaved!" }
    end
  end
end
