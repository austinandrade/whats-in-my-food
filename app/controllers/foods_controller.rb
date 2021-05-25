class FoodsController < ApplicationController
  def index
    @total_found, @foods = FoodsFacade.relevant_dishes(params[:q])
  end
end
