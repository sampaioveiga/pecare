class Patient < ApplicationRecord
  has_many :pulmonary_appointments
  has_many :tiss_evaluations
  resourcify
  
  validates :name,
    presence: true
  validates :date_of_birth,
    presence: true
  validates :rnu,
    presence: true,
    uniqueness: true,
    numericality: { only_integer: true },
    length: { in: 6..9 }
  validates :npsonho,
    presence: true,
    uniqueness: true,
    numericality: { only_integer: true },
    length: { in: 4..6 }
end
