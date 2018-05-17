class OxygenTherapySupplier < ApplicationRecord

  validates :supplier_name,
    presence: true,
    uniqueness: true
end