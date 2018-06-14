class CreateTissEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :tiss_evaluations do |t|
      t.date :evaluation_date, null: false
      t.decimal :score, null: false

      # Basic activities
      t.integer :ba_q1, null: false
      t.integer :ba_q2, null: false
      t.integer :ba_q3, null: false
      t.integer :ba_q4, null: false
      t.integer :ba_q5, null: false
      t.integer :ba_q6, null: false
      t.integer :ba_q7, null: false

      # Ventilatory support
      t.integer :vs_q1, null: false
      t.integer :vs_q2, null: false
      t.integer :vs_q3, null: false
      t.integer :vs_q4, null: false

      # Cardiovascular support
      t.integer :cs_q1, null: false
      t.integer :cs_q2, null: false
      t.integer :cs_q3, null: false
      t.integer :cs_q4, null: false
      t.integer :cs_q5, null: false
      t.integer :cs_q6, null: false
      t.integer :cs_q7, null: false
      
      # Renal support
      t.integer :rs_q1, null: false
      t.integer :rs_q2, null: false
      t.integer :rs_q3, null: false
      
      # Neurologic support
      t.integer :ns_q1, null: false

      # Metabolic support
      t.integer :ms_q1, null: false
      t.integer :ms_q2, null: false
      t.integer :ms_q3, null: false

      # Specific interventions
      t.integer :si_q1, null: false
      t.integer :si_q2, null: false
      t.integer :si_q3, null: false

      t.references :patient, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :tiss_evaluations, [ :patient_id, :evaluation_date ]
  end
end
