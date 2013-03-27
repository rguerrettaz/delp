class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :address, :website, :hours
      t.integer :geo_lo, :phone_number, :price_range
      t.references :user
    end
  end
end
