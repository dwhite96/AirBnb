class RemoveRequestorFieldsFromBookingRequests < ActiveRecord::Migration
  def change
    remove_column :booking_requests, :requestor_first_name, :string, default: "", null: false
    remove_column :booking_requests, :requestor_last_name, :string, default: "", null: false
    remove_column :booking_requests, :requestor_email, :string, null: false
  end

end
