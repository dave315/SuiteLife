class Api::V1::ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  def show
    @apartment = Apartment.find(params[:id])

    render json: @apartment
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save!
  end

  protected
  def apartment_params
    params.require(:apartment).permit(:address,
                                      :city,
                                      :state,
                                      :photo_url,
                                      :listing_url,
                                      :price,
                                      :available,
                                      :zip,
                                      :description )
  end
end
