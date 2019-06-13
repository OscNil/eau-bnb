class AddUserPicUrlToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_pic_url, :string
  end
end
