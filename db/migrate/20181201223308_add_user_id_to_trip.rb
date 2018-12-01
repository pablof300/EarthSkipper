class AddUserIdToTrip < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :user, index: true
  end
end
