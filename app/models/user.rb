class User < ActiveRecord::Base
  include BCrypt

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

  VALID_EMAIL_REGEX = /^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/

  validates :email, :uniqueness => true, :presence => true, format: { :with => VALID_EMAIL_REGEX } 
  validates :username, :uniqueness => true, :presence => true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
