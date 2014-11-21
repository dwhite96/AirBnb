require "rails_helper"

RSpec.describe BookingRequestsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/listings/1/booking_requests").to route_to("booking_requests#index", :listing_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/listings/1/booking_requests/new").to route_to("booking_requests#new", :listing_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/listings/1/booking_requests/1").to route_to("booking_requests#show", :listing_id => "1", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/listings/1/booking_requests/1/edit").to route_to("booking_requests#edit", :listing_id => "1", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/listings/1/booking_requests").to route_to("booking_requests#create", :listing_id => "1")
    end

    it "routes to #update" do
      expect(:put => "/listings/1/booking_requests/1").to route_to("booking_requests#update", :listing_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/listings/1/booking_requests/1").to route_to("booking_requests#destroy", :listing_id => "1", :id => "1")
    end

  end
end
