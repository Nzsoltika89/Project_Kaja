class DishesController < ApplicationController

	before_action :authenticate_user!
    before_action :set_dish, only:[:show, :destroy, :edit, :update]

  def index
  end

  def new
    @dish = Dish.new
  end

# def create
#   @dish = Dish.new(dish_params)
#    if @dish.save
#      redirect_to root
#    else
#      render :new
#    end
#end

   def create
     params[:dish][:category_id]=params[:category_id]
     @dish = current_user.dishes.build(dish_params)
    if @dish.save
     redirect_to root_path
    else
     render :new
    end
   end


  def show
  end

  def category
    pp @dishes=Dish.where(category_id: params[:id])
  end



  private

  def set_dish
    @dish=Dish.find(params[:id])
  end

  
  def dish_params
    params.require(:dish).permit(:name, :description, :receipt, :price, :user_id, :category_id)
  end

end
