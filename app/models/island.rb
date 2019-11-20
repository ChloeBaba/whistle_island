class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :photos, dependent: :destroy
  # validates :name, :description, :availability
end
