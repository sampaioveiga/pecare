class InhalerDevice < ApplicationRecord
  has_many :prescribed_inhaler
  has_many :pulmonary_appointments

  scope :active, -> { where(active: true) }

  validates :inhaler_device_type,
    presence: true
  validates :active_ingredient_inn,
    presence: true
  validates :active_ingredient_trade_name,
    presence: true

  def full_choice
    "#{inhaler_device_type} - #{active_ingredient_inn}, #{active_ingredient_trade_name} #{medicine_dosage}"
  end
end