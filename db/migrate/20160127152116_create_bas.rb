class CreateBas < ActiveRecord::Migration
  def change
    create_table :bas do |t|
      t.string :src
      t.string :descr
      t.string :title

      t.timestamps
    end
  end
end
