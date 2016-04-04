class AddPictureToStadia < ActiveRecord::Migration
  def change
    add_column :stadia, :picture, :string
  end
end
