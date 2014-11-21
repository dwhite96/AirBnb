require 'rails_helper'

RSpec.describe "BookingRequests", :type => :request do
  describe "GET /booking_requests" do
    it "works! (now write some real specs)" do
      get booking_requests_path
      expect(response.status).to be(200)
    end
  end
end
