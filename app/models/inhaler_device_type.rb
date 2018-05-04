class InhalerDeviceType < ApplicationRecord
  validates :inhaler_type_name,
    presence: true,
    uniqueness: { case_sensitive: false }
end