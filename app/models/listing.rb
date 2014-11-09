class Listing < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :price, presence: true, numericality: true, format: { with: /^\d{1,4}(\.\d{0,2})?$/ }
end
