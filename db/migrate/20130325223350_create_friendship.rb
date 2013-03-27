class CreateFriendship < ActiveRecord::Migration
  def change
    create_table :friendships, :id => false do |t|
      t.integer :friend_id, :user_id
    end
  end
end
