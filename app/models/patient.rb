class Patient < ApplicationRecord
  validates :name,
    presence: true
  validates :date_birth,
    presence: true
  validates :rnu,
    presence: true,
    uniqueness: true,
    numericality: { only_integer: true },
    length: { is: 9 }
  validates :npsonho,
    presence: true,
    uniqueness: true,
    numericality: { only_integer: true },
    length: { is: 6 }
end
