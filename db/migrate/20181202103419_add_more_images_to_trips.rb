class AddMoreImagesToTrips < ActiveRecord::Migration[5.2]
  def self.up
    change_table :trips do |t|
      t.attachment :image_two
      t.attachment :image_three
    end
  end

  def self.down
    remove_attachment :trips, :image_two
    remove_attachment :trips, :image_three
  end
end
