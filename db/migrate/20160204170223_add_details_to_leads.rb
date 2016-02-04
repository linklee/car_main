class AddDetailsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :ticket, :string
    add_column :leads, :insurance, :string
    add_column :leads, :i_comment, :text
  end
end
