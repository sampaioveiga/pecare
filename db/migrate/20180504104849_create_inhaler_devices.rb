class CreateInhalerDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :inhaler_devices do |t|
      t.string :inhaler_device_type, null: false
      t.string :active_ingredient_inn, null: false
      t.string :active_ingredient_trade_name, null: false
      t.string :medicine_dosage
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :inhaler_devices, [ :inhaler_device_type, :active_ingredient_inn ], name: 'by_inhaler_type_and_inn'
    #add_index :inhaler_devices, :active_ingredient_inn
  end
end