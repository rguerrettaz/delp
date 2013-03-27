class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :wishlists
  has_many :checkins
  belongs_to :user
end
