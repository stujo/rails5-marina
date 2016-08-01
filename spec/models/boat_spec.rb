require 'rails_helper'

RSpec.describe Boat, type: :model do
  let(:valid_params){
    {
      name: 'Tipsy',
      length: 10.5,
      description: 'A beautiful cruiser'
    }
  }

  let(:tipsy){
    Boat.create(valid_params)
  }

  describe '#name' do
    it 'is unique' do
      tipsy1 = Boat.create(valid_params)
      tipsy2 = Boat.create(valid_params)
      expect(tipsy2).to_not be_valid
    end
    it 'is required' do
      valid_params.delete(:name)
      nameless = Boat.create(valid_params)
      expect(nameless).to_not be_valid
    end
    it 'is stored' do
      expect(tipsy.name).to eq(valid_params[:name])
    end
  end
end
