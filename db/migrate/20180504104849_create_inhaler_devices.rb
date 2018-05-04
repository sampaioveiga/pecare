class CreateInhalerDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :inhaler_devices do |t|
      t.string :active_ingredient_inn, null: false
      t.string :active_ingredient_trade_name, null: false
      t.string :medicine_dosage
      t.references :inhaler_device_type, foreign_key: true

      t.timestamps
    end
    add_index :inhaler_devices, :active_ingredient_inn, name: :inhaler_inn
    add_index :inhaler_devices, [ :inhaler_device_type_id, :active_ingredient_inn ], name: :inhalers_inn
  end
end
