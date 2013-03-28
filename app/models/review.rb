class Review < ActiveRecord::Base
  has_many :comments
  belongs_to :restaurant
  belongs_to :user
end
