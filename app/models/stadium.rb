class Stadium < ActiveRecord::Base
  has_many :photos
  belongs_to :users
  has_many :comments

  validates_uniqueness_of :name
  validates_presence_of :city
  validates_presence_of :pictures, length: { minimum: 2 }
  validates_presence_of :country
  validates_presence_of :clubs
end
