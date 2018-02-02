class Plan < ApplicationRecord
  has_many :orders, autosave: true
  has_many :places, :through => :orders
  accepts_nested_attributes_for :orders
end
