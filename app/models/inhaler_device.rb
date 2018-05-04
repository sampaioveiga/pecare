class InhalerDevice < ApplicationRecord
  belongs_to :inhaler_device_type
  has_many :precribed_inhaler

  validates :active_ingredient_inn,
    presence: true
  validates :active_ingredient_trade_name,
    presence: true
end