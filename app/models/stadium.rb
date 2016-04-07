class Stadium < ActiveRecord::Base
  has_many :photos
  belongs_to :users
  has_many :comments

  has_many :users, through: :likes

  validates :name, uniqueness: true
  validates :name, :city, :country, :clubs, presence: true

end
