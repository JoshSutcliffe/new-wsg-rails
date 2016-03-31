class AddNameToStadia < ActiveRecord::Migration
  def change
    add_column :stadia, :name, :string
    add_column :stadia, :city, :string
    add_column :stadia, :country, :string
    add_column :stadia, :capacity, :integer
    add_column :stadia, :bio, :string
  end
end
