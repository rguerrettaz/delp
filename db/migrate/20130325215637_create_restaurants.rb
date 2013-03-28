class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :address, :website, :hours, :phone_number
      t.integer :geo_lo, :price_range
      t.references :user
    end
  end
end
