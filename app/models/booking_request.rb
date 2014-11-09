class BookingRequest < ActiveRecord::Base
  belongs_to :listing

  validates :requestor_first_name, presence: true
  validates :requestor_last_name, presence: true
  validates :requestor_email, presence: true
  validates :requested_dates, presence: true
end
