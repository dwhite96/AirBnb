class BookingRequestsController < ApplicationController
  before_action :set_booking_request, only: [:show, :edit, :update, :destroy]

  def index
    @listing_id = params[:listing_id]
    @booking_requests = BookingRequest.where(listing_id: @listing_id)
  end

  def show
  end

  def new
    @booking_request = BookingRequest.new
  end

  def edit
  end

  def create
    listing = Listing.find(params[:listing_id])
    @booking_request = listing.booking_requests.create(booking_request_params)

    if @booking_request.persisted?
      redirect_to listings_path, notice: "Booking request was successfully created."
    else
      render :new
    end
  end

  def update
    @booking_request.update(booking_request_params)
  end

  def destroy
    @booking_request.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Listing was successfully destroyed.' }
    end
  end

  private
    def set_booking_request
      @booking_request = BookingRequest.find(params[:id])
    end

    def booking_request_params
      params.require(:booking_request).permit(:requestor_first_name, :requestor_last_name, :requestor_email, :requested_dates)
    end
end
