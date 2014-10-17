class WelcomeController < ApplicationController
  def index
    @deliver_time = Time.now + 45.minutes
    @deliver_time = @deliver_time.strftime "%I: %M %P"

    @foods = Hash.new
    ['Asian', 'Western', 'Adventurous'].each { |c| @foods[c.downcase.to_sym] = FoodItem.where(cuisine: c).sample }

    # if params[:admin] == "true"
    #   render 'index'
    # else
    #   render 'under_constructions'
    # end
  end
end
