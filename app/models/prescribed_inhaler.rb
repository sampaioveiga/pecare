class PrescribedInhaler < ApplicationRecord
  belongs_to :pulmonary_appointment
  belongs_to :inhaler_device

  enum before_technic: [ :bt_bad, :bt_average, :bt_good ]
  enum after_technic: [ :at_bad, :at_average, :at_good ]
end