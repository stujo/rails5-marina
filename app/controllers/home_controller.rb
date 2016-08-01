class HomeController < ApplicationController
  def index
  	@page_title = "Welcome to Marina Athena"
  	@boats = Boat.available
  end
end
