require "rails_helper"

RSpec.feature "Home Page", :type => :feature, js: true do

	let(:fake_weather){
		 JSON.parse '{"coord":{"lon":-122.33,"lat":47.61},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"base":"cmc stations","main":{"temp":294.34,"pressure":1022,"humidity":56,"temp_min":288.71,"temp_max":297.04},"wind":{"speed":2.06,"deg":14,"gust":5.65},"clouds":{"all":0},"dt":1470272087,"sys":{"type":3,"id":9628,"message":0.0032,"country":"US","sunrise":1470315089,"sunset":1470368300},"id":5809844,"name":"Seattle","cod":200}'
	}

  	scenario "it is a clear day and we see that on the home page" do
	    allow_any_instance_of(WeatherHelper).to receive(:seattle_weather).and_return fake_weather
	    visit "/"
		details	 = page.find('.weather-info .details')
		expect(details).to have_text("clear sky")
	end
end