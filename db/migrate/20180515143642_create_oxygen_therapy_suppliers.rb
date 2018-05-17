class CreateOxygenTherapySuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :oxygen_therapy_suppliers do |t|
      t.string :supplier_name, null: false

      t.timestamps
    end
    add_index :oxygen_therapy_suppliers, :supplier_name, unique: true
  end
end
