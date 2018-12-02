class AddHttpToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :https, :text
  end
end
