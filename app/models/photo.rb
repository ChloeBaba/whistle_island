class Photo < ApplicationRecord
  belongs_to :island
  mount_uploader :photo_path, PhotoUploader
end
