class PulmonaryAppointment < ApplicationRecord
  belongs_to :patient
  default_scope -> { order(date: :desc, created_at: :desc) }

  validates :patient_id,
    presence: true
  validates :date,
    presence: true
end
