class CreateBookingRequests < ActiveRecord::Migration
  def change
    create_table :booking_requests do |t|
      t.references :listing, index: true
      t.string :requestor_first_name, default: "",  null: false
      t.string :requestor_last_name, default: "",  null: false
      t.string :requestor_email, default: "",  null: false
      t.date :requested_dates, null: false

      t.timestamps
    end
  end
end
