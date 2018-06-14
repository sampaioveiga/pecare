class CreateNivPrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :niv_prescriptions do |t|
      t.references :pulmonary_appointment, foreign_key: true
      t.string :bipap
      t.string :ipap
      t.string :epap
      t.string :cpap
      t.string :pressure
      t.string :hours
      t.string :oxygen
      t.string :mask
      
      t.timestamps
    end
    add_index :niv_prescriptions, [ :pulmonary_appointment_id, :id ]
  end
end
