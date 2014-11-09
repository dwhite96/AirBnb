json.array!(@booking_requests) do |booking_request|
  json.extract! booking_request, :id, :listing, :requestor_first_name, :requestor_last_name, :requestor_email, :requested_dates
  json.url booking_request_url(booking_request, format: :json)
end
