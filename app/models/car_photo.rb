class CarPhoto < ActiveRecord::Base
	mount_uploader :p1, PhotoUploader
	mount_uploader :p2, PhotoUploader
	
	mount_uploader :p3, PhotoUploader
	mount_uploader :p4, PhotoUploader
	
	mount_uploader :p5, PhotoUploader
	mount_uploader :p6, PhotoUploader

	mount_uploader :p7, PhotoUploader
	mount_uploader :p8, PhotoUploader

end
