class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = current_user.listings.create(listing_params)
    if @listing.persisted?
      redirect_to listings_path, notice: "Listing was successfully posted."
    else
      render :new
    end
  end

  def update
    @listing.update(listing_params)
  end

  def destroy
    p params
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Listing was successfully destroyed.' }
    end
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:user_id, :title, :description, :neighborhood, :address, :city, :state, :country, :price)
    end
end
