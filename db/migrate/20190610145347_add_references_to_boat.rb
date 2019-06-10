class AddReferencesToBoat < ActiveRecord::Migration[5.2]
  def change
    add_reference :boats, :user, foreign_key: true
    rename_column :boats, :user_id, :owner_id
  end
end
