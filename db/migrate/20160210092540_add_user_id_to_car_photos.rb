class AddUserIdToCarPhotos < ActiveRecord::Migration
  def change
    add_column :car_photos, :user_id, :string
    add_column :car_photos, :string, :string
  end
end
