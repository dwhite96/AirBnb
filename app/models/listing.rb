class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :booking_requests, dependent: :destroy
  has_many :booking_request_users, through: :booking_requests, source: :user

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :price, presence: true, numericality: true
  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode

  def requested_by?(user)
    booking_request_users.include?(user)
  end
end
