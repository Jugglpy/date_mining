class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.text     :name
      t.decimal  :latitude,   :precision => 9, :scale => 6
      t.decimal   :longtitude, :precision => 9, :scale => 6
      t.timestamps
    end
  end
end
