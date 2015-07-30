class Apartment < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :listing_url, presence: true
end
