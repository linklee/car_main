class AddCarModelToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :car_model, :string
  end
end
