class AddLengthToBoats < ActiveRecord::Migration[5.0]
  def change
  	add_column :boats, :length, :decimal
  end
end
