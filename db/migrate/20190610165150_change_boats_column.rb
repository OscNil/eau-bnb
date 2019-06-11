class ChangeBoatsColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :boats, :boat_pic_url
    add_column :boats, :photo, :string
  end
end
