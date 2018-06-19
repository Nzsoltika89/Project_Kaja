class DishcommentsController < ApplicationController

	def create
    params[:dishcomment][:dish_id] = params[:dish_id]
    params[:dishcomment][:user_id] = current_user.id
    @dishcomment = Dishcomment.create(dishcomments_params)
    if @dishcomment.save
      redirect_to dish_path(params[:dish_id])
    else
      @dishcomment.errors.full_messages.each do |msg|
        @msg = msg
    end  
      flash[:notice] = "#{@msg}"
      redirect_to dish_path(params[:dish_id])
      end
      
  end


  private
  def dishcomments_params
    params.require(:dishcomment).permit(:user_id, :dish_id, :texofcom)
  
  end
end
