module WeatherHelper

  def self.retrieve_weather_cache
  	return @_cache_weather
  end

  def self.store_weather(value)
  	@_cache_weather = {
  		timestamp: Time.now,
  		value: value
  	}
  	@_cache_weather[:value][:cached_at] = @_cache_weather[:timestamp]
  end

  def self.cache_fresh?(cache)
  	return false unless cache && cache[:timestamp] 

    age_in_minutes = ((Time.now - cache[:timestamp] )/60.0).round

    return age_in_minutes < 10
  end


  def self.try_cache_weather(&block)
  	 cache = retrieve_weather_cache

  	 puts "Checking Cache #{cache}"

     if self.cache_fresh?(cache)
     	puts "Using Cache #{cache[:value]}"
     	cache[:value]
     else 
     	puts "Refreshing Cache #{cache}"
        store_weather(yield)
     	cache = retrieve_weather_cache
        if self.cache_fresh?(cache)
         	puts "Using Fresh Cache #{cache[:value]}"
        	cache[:value]
        else
         	puts "Cache and Lookup Failed"
        	nil
        end
     end

  end

 
  def seattle_weather

	apires = WeatherHelper.try_cache_weather do
	    appId = ENV['OPEN_WEATHER_MAP_API_KEY']
	    zip = '98101,us'
	    url = "http://api.openweathermap.org/data/2.5/weather?APPID=#{appId}&zip=#{zip}"

	    Unirest.get(url).body
	end 
  end
end
