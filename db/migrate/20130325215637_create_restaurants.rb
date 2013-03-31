class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :address, :website, :hours, :phone
      t.integer :geo_lo, :price_range, :category_id
      t.float :rating
      t.references :user
    end
  end
end
