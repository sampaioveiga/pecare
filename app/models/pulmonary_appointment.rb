class PulmonaryAppointment < ApplicationRecord
  belongs_to :patient
  default_scope -> { order(date: :desc) }

  validates :patient_id,
    presence: true
  validates :date,
    presence: true
end
