class BookingRequestsController < ApplicationController
  before_action :set_booking_request, only: [:show, :edit, :update, :destroy]

  def index
    @booking_requests = BookingRequest.all
    respond_with(@booking_requests)
  end

  def show
    respond_with(@booking_request)
  end

  def new
    @booking_request = BookingRequest.new
    respond_with(@booking_request)
  end

  def edit
  end

  def create
    @booking_request = BookingRequest.new(booking_request_params)
    @booking_request.save
    respond_with(@booking_request)
  end

  def update
    @booking_request.update(booking_request_params)
    respond_with(@booking_request)
  end

  def destroy
    @booking_request.destroy
    respond_with(@booking_request)
  end

  private
    def set_booking_request
      @booking_request = BookingRequest.find(params[:id])
    end

    def booking_request_params
      params.require(:booking_request).permit(:listing, :requestor_first_name, :requestor_last_name, :requestor_email, :requested_dates)
    end
end
