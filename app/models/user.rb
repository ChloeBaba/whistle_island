class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :islands
  has_many :bookings, through: :islands
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
