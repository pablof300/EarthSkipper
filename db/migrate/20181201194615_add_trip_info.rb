class AddTripInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :trips,:verified,:boolean
    add_column :trips,:price,:integer
    add_column :trips,:destination,:string
    add_column :trips,:startDate,:date
    add_column :trips,:returnDate,:date
  end
end
