class User < ActiveRecord::Base
  has_many :photos
  has_many :likes
  has_many :stadia
  has_many :comments
end
