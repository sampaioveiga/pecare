class Role < ApplicationRecord
  belongs_to :user

  enum pulmonology: [ 'pulmonology-no-access', 'pulmonology-user', 'pulmonology-superuser' ]
  enum icu: [ 'icu-no-access', 'icu-user', 'icu-superuser' ]

  validates :pulmonomology,
    presence: true
  validates :icu,
    presence: true
end