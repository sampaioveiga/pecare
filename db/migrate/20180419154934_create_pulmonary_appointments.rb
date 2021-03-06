class CreatePulmonaryAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :pulmonary_appointments do |t|
      t.date        :appointment_date, null: false
      t.integer     :weight
      t.string      :blood_pressure
      t.integer     :pulse
      t.integer     :oxygen
      t.integer     :pef
      t.boolean     :inhaler, default: false
      t.text        :medication
      t.references  :patient, foreign_key: true

      t.timestamps
    end
    add_index :pulmonary_appointments, [ :patient_id, :appointment_date]
  end
end
