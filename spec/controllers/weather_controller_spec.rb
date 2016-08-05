require 'rails_helper'
require_relative '../vcr_helper'

RSpec.describe WeathersController, type: :controller do


  describe "GET #show" do
    it "returns http success" do

      VCR.use_cassette('weather_api', :record => :new_episodes) do
        get :show, {:format => :json}
        expect(JSON.parse(response.body)["weather"][0]["description"]).to eq('clear sky')
      end

    end
  end

end
