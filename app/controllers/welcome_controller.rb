class WelcomeController < ApplicationController
  def index
    @deliver_time = Time.now + 45.minutes
    @deliver_time = @deliver_time.strftime "%I: %M %P"
    if params[:admin] == "true"
      render 'index'
    else
      render 'under_constructions'
    end
  end
end
