class PulmonaryAppointment < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_many :prescribed_inhalers, inverse_of: :pulmonary_appointment
  accepts_nested_attributes_for :prescribed_inhalers#, reject_if: :all_blank, allow_destroy: true
  
  default_scope -> { order(appointment_date: :desc, created_at: :desc) }

  validates :patient_id,
    presence: true
  validates :appointment_date,
    presence: true
end