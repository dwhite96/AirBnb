class BookingRequestsController < ApplicationController
  before_action :set_booking_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

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
    @booking_request = current_user.booking_requests.build(booking_request_params)
    @booking_request.listing = Listing.find(params[:listing_id])

    if @booking_request.save
      # mailer currently deactivated
      # BookingRequestMailer.booking_request_email(@booking_request).deliver
      redirect_to listings_path, notice: "Booking request was successfully created."
    else
      render :new
    end
  end

  def update
    @booking_request.update(booking_request_params)
    render :show
  end

  def destroy
    @booking_request.destroy
    respond_to do |format|
      format.html { redirect_to listing_booking_requests_path, notice: 'Listing was successfully destroyed.' }
    end
  end

  private
    def set_booking_request
      @booking_request = BookingRequest.find(params[:id])
    end

    def booking_request_params
      params.require(:booking_request).permit(:requested_dates, :status)
    end
end
