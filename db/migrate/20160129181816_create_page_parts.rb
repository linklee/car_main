class CreatePageParts < ActiveRecord::Migration
  def change
    create_table :page_parts do |t|
      t.string :page_name
      t.text :text

      t.timestamps
    end
  end
end
