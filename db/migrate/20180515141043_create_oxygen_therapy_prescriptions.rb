class CreateOxygenTherapyPrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :oxygen_therapy_prescriptions do |t|
      t.references :pulmonary_appointment, foreign_key: true
      t.string :oxygen_therapy_supplier
      t.integer :flow
      t.integer :number_hours
      t.boolean :oxygen_tank, default: false
      t.boolean :liquid_oxygen, default: false
      t.boolean :oxygen_concentrator, default: false
      t.boolean :portable_oxygen_concentrator, default: false

      t.timestamps
    end
  end
end
