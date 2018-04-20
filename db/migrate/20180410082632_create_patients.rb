class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name, null: false
      t.date :date_of_birth, null: false
      t.integer :rnu, null: false
      t.integer :npsonho, null: false

      t.timestamps
    end
    add_index :patients, :name
    add_index :patients, :rnu, unique: true
    add_index :patients, :npsonho, unique: true
  end
end
