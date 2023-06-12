class RenameAvatarToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :avatar, :image
  end
end
