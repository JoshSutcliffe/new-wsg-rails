class Photo < ActiveRecord::Base
  belongs_to :users
  has_many :likes
  belongs_to :stadia
end
