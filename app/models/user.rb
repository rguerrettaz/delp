class User < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  has_one :wishlist
  has_many :checkins
  has_one :cohort
  has_many :restaurants
  has_many :comments
  has_many :reviews
end
