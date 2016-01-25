class AddCoordsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :coords, :string
  end
end
