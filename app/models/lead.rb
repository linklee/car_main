class Lead < ActiveRecord::Base
 # before_save {  self.status = "0" if !self.status}
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :status_photo, PhotoUploader


  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true
                    #,format:     { with: VALID_EMAIL_REGEX }
                    #uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true
  validates :car_type,  length: { maximum: 50 }
  validates :car_manufacturer, presence: true
  validates :car_year, presence: true
  validates :photo1, presence: true
  validates :photo2, presence: true
  validates :car_model, presence: true

  default_scope -> { order('created_at DESC') }
end
