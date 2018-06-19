class PagesController < ApplicationController

  def index
	@user = User.all
	@dishes = Dish.all 
  end
end
