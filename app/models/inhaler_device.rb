class InhalerDevice < ApplicationRecord
  belongs_to :inhaler_device_type

  validates :active_ingredient_inn,
    presence: true
  validates :active_ingredient_trade_name,
    presence: true
end