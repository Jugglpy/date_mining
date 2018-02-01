class AddNameToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :name, :text
    add_column :plans, :cost, :integer
    add_column :plans, :time, :datetime
    add_column :plans, :season, :text
  end
end
