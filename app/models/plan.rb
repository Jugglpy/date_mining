class Plan < ApplicationRecord
  has_many :orders
  has_many :places, :through => :orders
  accepts_nested_attributes_for :places
end
