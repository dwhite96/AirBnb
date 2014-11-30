class AddStatusToBookingRequests < ActiveRecord::Migration
  def change
    add_column :booking_requests, :status, :string, null: false, default: "Open"
  end
end
