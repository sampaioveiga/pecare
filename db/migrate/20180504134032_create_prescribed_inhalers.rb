class CreatePrescribedInhalers < ActiveRecord::Migration[5.1]
  def change
    create_table :prescribed_inhalers do |t|
      t.references :pulmonary_appointment, foreign_key: true
      t.references :inhaler_device, foreign_key: true
      t.integer :before_technic
      t.integer :after_technic
      t.text :observation
      
      t.timestamps
    end
    add_index :prescribed_inhalers, [ :pulmonary_appointment_id, :id ]
  end
end
