class InhalerDeviceType < ApplicationRecord
  has_many :inhaler_devices
  
  validates :inhaler_type_name,
    presence: true,
    uniqueness: { case_sensitive: false }
end