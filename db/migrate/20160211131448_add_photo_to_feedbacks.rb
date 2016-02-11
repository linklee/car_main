class AddPhotoToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :photo_url, :string
  end
end
