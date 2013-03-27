class Category < ActiveRecord::Base
  belongs_to :topic
  has_and_belongs_to_many :restaurants
end
