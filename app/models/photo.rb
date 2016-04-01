class Photo < ActiveRecord::Base
  belongs_to :users
  has_many :likes
  belongs_to :stadia

  # Have to add image magik, AWS here. Image validation as well
end
