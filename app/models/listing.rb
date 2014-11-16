class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :booking_requests, dependent: :destroy

  validates :title, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :price, presence: true, numericality: true
end
