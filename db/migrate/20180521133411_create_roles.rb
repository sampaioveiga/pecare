class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.references :user, foreign_key: true
      t.integer :pulmonology, null: false, default: 0
      t.integer :icu, null: false, default: 0

      t.timestamps
    end
  end
end
