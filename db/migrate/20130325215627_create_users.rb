class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :password_hash, :name, :username, :address, :favorite_food, :quote, :quirk, :favorite_language, :favorite_teacher, :hometown, :loves
      t.references :cohort
      t.timestamps
    end
  end
end
