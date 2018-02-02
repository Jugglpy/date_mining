class Order < ApplicationRecord
  belongs_to :plan, required: false
  belongs_to :place
end
