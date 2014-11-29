class BookingRequestMailer < ActionMailer::Base

  def booking_request_email(booking_request)
    @booking_request = booking_request
    @booking_request.user = User.find(@booking_request.user_id)
    @booking_request.listing = Listing.find(@booking_request.listing_id)
    @booking_request.listing.user = User.find(@booking_request.listing.user_id)
    mail(from: @booking_request.user.email, to: @booking_request.listing.user.email, subject: 'You have a New Booking Request')
  end
end
