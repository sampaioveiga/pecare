class TissEvaluation < ApplicationRecord
  belongs_to :patient
  belongs_to :user
end