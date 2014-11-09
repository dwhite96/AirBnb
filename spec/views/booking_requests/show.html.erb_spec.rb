require 'rails_helper'

RSpec.describe "booking_requests/show", :type => :view do
  before(:each) do
    @booking_request = assign(:booking_request, BookingRequest.create!(
      :listing => "",
      :requestor_first_name => "Requestor First Name",
      :requestor_last_name => "Requestor Last Name",
      :requestor_email => "Requestor Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Requestor First Name/)
    expect(rendered).to match(/Requestor Last Name/)
    expect(rendered).to match(/Requestor Email/)
  end
end
