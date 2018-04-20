class CreatePulmonaryAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :pulmonary_appointments do |t|
      t.date        :date, null: false
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
    add_index :patients, [ :patient_id, :date]
  end
end
