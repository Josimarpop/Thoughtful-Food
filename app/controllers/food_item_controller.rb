class FoodItemController < ApplicationController
  def show
    @id_requested = params[:id]
    @food = FoodItem.find(@id_requested)
  end
end
