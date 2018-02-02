class AddImageToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :image, :text
  end
end
