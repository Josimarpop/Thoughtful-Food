class CatalogueController < ApplicationController
  def show
    @foods = FoodItem.all
  end
end
