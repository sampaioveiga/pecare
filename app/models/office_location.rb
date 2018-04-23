class OfficeLocation < ApplicationRecord
  has_many :users

  validates :location_name,
    presence: true,
    uniqueness: true
end
