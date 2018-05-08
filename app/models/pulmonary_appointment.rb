class PulmonaryAppointment < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_many :prescribed_inhalers, inverse_of: :pulmonary_appointment
  accepts_nested_attributes_for :prescribed_inhalers, allow_destroy: true
  has_many :inhaler_devices, through: :prescribed_inhalers
  
  default_scope -> { order(appointment_date: :desc, created_at: :desc) }

  validates :patient_id,
    presence: true
  validates :appointment_date,
    presence: true
end