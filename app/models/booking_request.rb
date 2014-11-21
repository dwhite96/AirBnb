class BookingRequest < ActiveRecord::Base
  belongs_to :listing
  belongs_to :user

  validates :requested_dates, presence: true
end
