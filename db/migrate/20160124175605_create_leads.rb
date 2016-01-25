class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :photo1
      t.string :photo2
      t.string :car_type
      t.string :car_manufacturer
      t.integer :car_year

      t.timestamps
    end
  end
end
