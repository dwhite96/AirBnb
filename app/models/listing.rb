class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :booking_requests, dependent: :destroy
  has_many :booking_request_users, through: :booking_requests, source: :user

  validates :title, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :price, presence: true, numericality: true

  def requested_by?(user)
    booking_request_users.include?(user)
  end
end
