class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|

      t.timestamps null: false
    end
  end
end
