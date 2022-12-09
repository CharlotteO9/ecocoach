class SavedUserTipsController < ApplicationController
  def create
    @saved_user_tip = SavedUserTip.new
    @usertip = Usertip.find(params[:usertip_id])
    @saved_user_tip.usertip = @usertip
    @saved_user_tip.user = current_user
    authorize @saved_user_tip
    respond_to do |format|
      if @saved_user_tip.save
        format.html { redirect_to request.referer, notice: "Tip saved!" }
        format.json { render json: {
          html: render_to_string(partial: 'usertips/card', locals: { usertip: @usertip }, formats: :html)
        } }
      else
        format.html { redirect_to request.referer, status: :unprocessable_entity }
        format.json { render json: { errors: @saved_user_tip.errors.full_messages.join(', ') } }
      end
    end
  end

  def destroy
    @saved_user_tip = SavedUserTip.find(params[:id])
    @usertip = @saved_user_tip.usertip
    authorize @saved_user_tip
    @saved_user_tip.destroy
    respond_to do |format|
      format.json { render json: {
        html: render_to_string(partial: 'usertips/card', locals: { usertip: @usertip }, formats: :html)
       } }
      format.html { redirect_to request.referer, notice: "Tips unsaved!" }
    end
  end
end
