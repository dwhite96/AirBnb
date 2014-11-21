class AddUserToBookingRequests < ActiveRecord::Migration
  def change
    add_column :booking_requests, :user_id, :integer, null: false, default: ""
    add_index :booking_requests, :user_id
  end
end
