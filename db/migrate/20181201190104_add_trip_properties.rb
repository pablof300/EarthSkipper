class AddTripProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :trips,:verified
    add_column :trips,:price
    add_column :trips,:destination
    add_column :trips,:startDate
    add_column :trips,:returnDate
  end
end
