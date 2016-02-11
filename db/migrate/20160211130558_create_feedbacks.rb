class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :k
      t.string :name
      t.string :location
      t.string :yelp_url

      t.timestamps
    end
  end
end
