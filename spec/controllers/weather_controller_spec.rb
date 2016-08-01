require 'rails_helper'

RSpec.describe WeathersController, type: :controller do

  let(:weather){
      get :show, {:format => :html}
      JSON.parse(response.body)["weather"]
  }	

  describe "GET #show" do
    it "returns http success" do
      get :show, {:format => :html}
      expect(weather).to eq('Sunny')
    end
  end

end
