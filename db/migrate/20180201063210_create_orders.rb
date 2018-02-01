class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :plan
      t.references :place
      t.integer    :order
      t.timestamps
    end
  end
end
