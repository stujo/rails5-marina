class Boat < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true

  scope :available, -> (){
  	all
  }
end
