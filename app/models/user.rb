require 'bcrypt'

class User < ActiveRecord::Base
  has_many :photos
  has_many :likes
  has_many :stadia
  has_many :comments

  has_many :stadia, through: :likes

  # attr_accessor :password

  has_secure_password

  validates :email, :username, uniqueness: true
  validates :username, :email, presence: true
  validates :password, presence: true, confirmation: true
end
