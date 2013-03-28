class CreateRestaurantsWishlists < ActiveRecord::Migration
  def change
    create_table :restaurants_wishlists, :id => false do |t|
      t.integer :restaurant_id
      t.integer :wishlist_id
    end
  end
end
