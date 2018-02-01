class Order < ApplicationRecord
  belongs_to :plan
  belongs_to :place
end
