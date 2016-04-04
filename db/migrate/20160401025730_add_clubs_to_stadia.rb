class AddClubsToStadia < ActiveRecord::Migration
  def change
    add_column :stadia, :clubs, :string
  end
end
