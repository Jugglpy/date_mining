class Place < ApplicationRecord
  has_many :orders
  has_many :plans, :through => :orders
end
