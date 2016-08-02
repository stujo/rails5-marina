require 'rails_helper'
require_relative '../vcr_helper'

RSpec.describe WeathersController, type: :controller do


  describe "GET #show" do
    it "returns http success" do

      VCR.use_cassette('weather_api', :record => :all) do
        get :show, {:format => :json}
        expect(JSON.parse(response.body)["weather"][0]["description"]).to eq('light rain')
      end

    end
  end

end
