class Stadium < ActiveRecord::Base
  has_many :photos
  belongs_to :users
  has_many :comments
end
