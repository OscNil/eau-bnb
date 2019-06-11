class RenameUserIdToConsumerId < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :user_id, :consumer_id
  end
end
