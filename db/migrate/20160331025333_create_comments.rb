class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps null: false
      t.references :user, index: true
      t.references :stadium, index: true
    end

    add_foreign_key :comments, :users, column: :user_id
    add_foreign_key :comments, :stadia, column: :stadium_id
  end
end
