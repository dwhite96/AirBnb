class User < ActiveRecord::Base
  has_many :listings
  has_many :booking_requests, through: :listings, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true
end
