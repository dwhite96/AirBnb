require 'rails_helper'

RSpec.describe "booking_requests/new", :type => :view do
  before(:each) do
    assign(:booking_request, BookingRequest.new(
      :listing => "",
      :requestor_first_name => "MyString",
      :requestor_last_name => "MyString",
      :requestor_email => "MyString"
    ))
  end

  it "renders new booking_request form" do
    render

    assert_select "form[action=?][method=?]", booking_requests_path, "post" do

      assert_select "input#booking_request_listing[name=?]", "booking_request[listing]"

      assert_select "input#booking_request_requestor_first_name[name=?]", "booking_request[requestor_first_name]"

      assert_select "input#booking_request_requestor_last_name[name=?]", "booking_request[requestor_last_name]"

      assert_select "input#booking_request_requestor_email[name=?]", "booking_request[requestor_email]"
    end
  end
end
