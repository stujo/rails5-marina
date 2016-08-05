class WeathersController < ApplicationController

  include WeatherHelper

  def show
    render json: seattle_weather
  end

end
