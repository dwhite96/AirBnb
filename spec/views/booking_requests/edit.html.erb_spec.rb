require 'rails_helper'

RSpec.describe "booking_requests/edit", :type => :view do
  before(:each) do
    @booking_request = assign(:booking_request, BookingRequest.create!(
      :listing => "",
      :requestor_first_name => "MyString",
      :requestor_last_name => "MyString",
      :requestor_email => "MyString"
    ))
  end

  it "renders the edit booking_request form" do
    render

    assert_select "form[action=?][method=?]", booking_request_path(@booking_request), "post" do

      assert_select "input#booking_request_listing[name=?]", "booking_request[listing]"

      assert_select "input#booking_request_requestor_first_name[name=?]", "booking_request[requestor_first_name]"

      assert_select "input#booking_request_requestor_last_name[name=?]", "booking_request[requestor_last_name]"

      assert_select "input#booking_request_requestor_email[name=?]", "booking_request[requestor_email]"
    end
  end
end
