class Place < ApplicationRecord
  has_many :orders
  has_many :plans, :through => :orders
  geocoded_by :address
  after_validation :geocode
end
