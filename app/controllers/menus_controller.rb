class MenusController < ApplicationController 
  def index
    @cities = City.all
  end
end
