class DishesController < ApplicationController

	before_action :authenticate_user!
    before_action :set_dish, only:[:show, :destroy, :edit, :update]

  def index
  end

  def new
    @dish = Dish.new
  end

  def create
    if current_user.role == "Editor"
      params[:dish][:category_id] = params[:category_id]
      @dish = current_user.dishes.build(dish_params)
    if @dish.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end


 def show
    @comments = Dishcomment.where(dish_id: @dish.id)
  end

  def category
    pp @dishes=Dish.where(category_id: params[:id])
  end



  private

  
  def dish_params
    params.require(:dish).permit(:name, :description, :receipt, :price, :user_id, :category_id, :logo)
  end

  def set_dish
    @dish=Dish.find(params[:id])
  end

end
