class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :address, :city, :state, :photo_url, :listing_url, :zip, :price, :available, :description
end
