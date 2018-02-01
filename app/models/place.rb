class Place < ApplicationRecord
  has_many :plans
  has_many :orders

end
