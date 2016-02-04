class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :header
      t.string :day
      t.string :month
      t.text :link
      t.string :p
      t.string :string

      t.timestamps
    end
  end
end
