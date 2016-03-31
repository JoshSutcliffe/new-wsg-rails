class AddRemarkToComments < ActiveRecord::Migration
  def change
    add_column :comments, :remark, :string
  end
end
