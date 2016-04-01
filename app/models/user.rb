class User < ActiveRecord::Base
  has_many :photos
  has_many :likes
  has_many :stadia
  has_many :comments

  validates_uniqueness_of :email
  validates_uniqueness_of :username

  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :password

  validates :email, :username, uniqueness: true
  validates :username, :email, :password, presence: true
end
