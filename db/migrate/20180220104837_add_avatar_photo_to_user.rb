class AddAvatarPhotoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar_photo, :string
  end
end
