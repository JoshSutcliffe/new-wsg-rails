class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|

      t.timestamps null: false
      t.references :user, index: true
      t.references :stadium, index: true
    end

    add_foreign_key :likes, :users, column: :user_id
    add_foreign_key :likes, :stadia, column: :stadium_id
  end
end
