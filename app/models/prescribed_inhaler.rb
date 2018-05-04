class PrescribedInhaler < ApplicationRecord
  belongs_to :pulmonary_appointment
  belongs_to :inhaler_device
end