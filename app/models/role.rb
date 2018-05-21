class Role < ApplicationRecord
  belongs_to :user

  validates :pulmonomolgy,
    presence: true
  validates :icu,
    presence: true
end