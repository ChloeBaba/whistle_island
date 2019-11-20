class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo_path, PhotoUploader
  # validates :name, :description, :availability
end
