class HomeController < ApplicationController
  def index
  	@boats = Boat.available
  end
end
