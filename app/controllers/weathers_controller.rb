class WeathersController < ApplicationController

  def show
      render json: {weather: 'Sunny'}
  end

end
