class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :department_name, null: false

      t.timestamps
    end

    change_table :users do |t|
      t.references :department, foreign_key: true
    end

    add_index :departments, :department_name, unique: true
  end
end
