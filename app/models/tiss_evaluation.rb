class TissEvaluation < ApplicationRecord
  belongs_to :patient
  belongs_to :user

  before_save :obtain_score

  validates :user_id,
    presence: true
  validates :evaluation_date,
    presence: true,
    uniqueness: { scope: [:patient_id], message: "already-has-evaluation" }

  private
    def obtain_score
      self.score =
        self.ba_q1 + 
        self.ba_q2 + 
        self.ba_q3 + 
        self.ba_q4 + 
        self.ba_q5 + 
        self.ba_q6 + 
        self.ba_q7 + 
        self.vs_q1 + 
        self.vs_q2 + 
        self.vs_q3 + 
        self.vs_q4 + 
        self.cs_q1 + 
        self.cs_q2 + 
        self.cs_q3 + 
        self.cs_q4 + 
        self.cs_q5 + 
        self.cs_q6 + 
        self.cs_q7 + 
        self.rs_q1 + 
        self.rs_q2 + 
        self.rs_q3 + 
        self.ns_q1 + 
        self.ms_q1 + 
        self.ms_q2 + 
        self.ms_q3 + 
        self.si_q1 + 
        self.si_q2 + 
        self.si_q3
    end
end