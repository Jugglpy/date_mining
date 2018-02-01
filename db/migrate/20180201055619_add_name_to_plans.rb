class AddNameToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :name, :text
  end
end
