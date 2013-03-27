class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :restaurant_id, :user_id
    end
  end
end
