class AddUserToPulmonaryAppointment < ActiveRecord::Migration[5.1]
  def change
    change_table :pulmonary_appointments do |t|
      t.references :user, foreign_key: true
    end
  end
end
