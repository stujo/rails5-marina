module WeatherHelper

  def seattle_weather

  	 Rails.cache.fetch("seattle_weather_api", expires_in: 10.seconds) do
	    appId = ENV['OPEN_WEATHER_MAP_API_KEY']
	    zip = '98101,us'
	    url = "http://api.openweathermap.org/data/2.5/weather?APPID=#{appId}&zip=#{zip}"

	    Unirest.get(url).body.tap do |res|
	      res[:timestamp] = Time.now
	    end
    end

  end

end
