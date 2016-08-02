module WeatherHelper
  def seattle_weather
    appId = ENV['OPEN_WEATHER_MAP_API_KEY']
    zip = '98101,us'
    url = "http://api.openweathermap.org/data/2.5/weather?APPID=#{appId}&zip=#{zip}"

    apires = Unirest.get(url)

    apires.body
  end
end
