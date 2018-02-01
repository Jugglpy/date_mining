class Plan < ApplicationRecord
  has_many :places
  has_many :orders
end
