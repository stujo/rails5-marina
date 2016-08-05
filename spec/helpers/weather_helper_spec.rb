require "rails_helper"

RSpec.describe WeatherHelper, :type => :helper do
  describe "#seattle_weather" do
    it "calls the Weather API" do
      
      allow(Unirest).to receive(:get).and_return(OpenStruct.new(:body => {:weather => 'Sunny'}))

      expect(helper.seattle_weather[:weather]).to eq 'Sunny'
    end
  end
end