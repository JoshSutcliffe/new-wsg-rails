class AddFkToLikes < ActiveRecord::Migration
  def change
    change_table :likes do |t|

      t.references :photo, index: true
    end

    add_foreign_key :likes, :photos, column: :photo_id
  end
end
