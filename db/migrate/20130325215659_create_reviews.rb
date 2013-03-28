class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content 
      t.integer :rating, :price_range
      t.references :restaurant, :user
      t.timestamps
    end
  end
end
