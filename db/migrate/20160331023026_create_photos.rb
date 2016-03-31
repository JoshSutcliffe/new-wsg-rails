class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

      t.timestamps null: false
      t.references :user, index: true
      t.references :stadium, index: true

    end
    add_foreign_key :photos, :users, column: :user_id
    add_foreign_key :photos, :stadia, column: :stadium_id

  end
end
