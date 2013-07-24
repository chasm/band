class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_line_1
      t.string :street_line_2
      t.string :zip_code
      t.string :lat_lng

      t.timestamps
    end
  end
end
