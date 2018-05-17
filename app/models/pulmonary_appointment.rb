class PulmonaryAppointment < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_many :prescribed_inhalers, inverse_of: :pulmonary_appointment
  accepts_nested_attributes_for :prescribed_inhalers, allow_destroy: true
  has_many :inhaler_devices, through: :prescribed_inhalers
  has_many :oxygen_therapy_prescriptions, inverse_of: :pulmonary_appointment
  accepts_nested_attributes_for :oxygen_therapy_prescriptions, allow_destroy: true
  
  default_scope -> { order(appointment_date: :desc, created_at: :desc) }

  validates :patient_id,
    presence: true
  validates :appointment_date,
    presence: true
  validates :oxygen,
    numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100 }, allow_blank: true
end