require 'rails_helper'

RSpec.describe "booking_requests/index", :type => :view do
  before(:each) do
    assign(:booking_requests, [
      BookingRequest.create!(
        :listing => "",
        :requestor_first_name => "Requestor First Name",
        :requestor_last_name => "Requestor Last Name",
        :requestor_email => "Requestor Email"
      ),
      BookingRequest.create!(
        :listing => "",
        :requestor_first_name => "Requestor First Name",
        :requestor_last_name => "Requestor Last Name",
        :requestor_email => "Requestor Email"
      )
    ])
  end

  it "renders a list of booking_requests" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Requestor First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Requestor Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Requestor Email".to_s, :count => 2
  end
end
