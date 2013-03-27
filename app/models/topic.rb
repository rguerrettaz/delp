class Topic < ActiveRecord::Base
  has_many :categories
end
