class Api::V1::ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all

    render json: @apartments
  end

  def show
    @apartment = Apartment.find(params[:id])

    render json: @apartment
  end

  def update
    @apartment = Apartment.find(params[:id])
    @apartment.update(apartment_params)
    render json: @apartment
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save!
    render json: @apartment
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
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
