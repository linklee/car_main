class AddStatusPhotoToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :status_photo, :string
  end
end
