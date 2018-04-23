class PulmonaryAppointment < ApplicationRecord
  belongs_to :patient
  default_scope -> { order(appointment_date: :desc, created_at: :desc) }

  validates :patient_id,
    presence: true
  validates :appointment_date,
    presence: true
end
