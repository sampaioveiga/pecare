class CreateInhalerDeviceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :inhaler_device_types do |t|
      t.string  :inhaler_type_name, null: false

      t.timestamps
    end
    add_index :inhaler_device_types, :inhaler_type_name
  end
end
