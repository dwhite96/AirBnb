class BookingRequestMailer < ActionMailer::Base

  def booking_request_email(booking_request)
    mail(from: booking_request.user.email, to: booking_request.listing.user.email, subject: 'You have a New Booking Request')
  end
end
