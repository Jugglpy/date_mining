class AddExplainToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :explain, :text
  end
end
