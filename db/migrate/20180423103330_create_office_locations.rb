class CreateOfficeLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :office_locations do |t|
      t.string :location_name,  null: false

      t.timestamps
    end

    change_table :users do |t|
      t.references :office_location, foreign_key: true
    end

    add_index :office_locations, :location_name, unique: true
  end
end