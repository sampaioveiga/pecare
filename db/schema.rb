# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180605102125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "department_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_name"], name: "index_departments_on_department_name", unique: true
  end

  create_table "inhaler_device_types", force: :cascade do |t|
    t.string "inhaler_type_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inhaler_type_name"], name: "index_inhaler_device_types_on_inhaler_type_name", unique: true
  end

  create_table "inhaler_devices", force: :cascade do |t|
    t.string "inhaler_device_type", null: false
    t.string "active_ingredient_inn", null: false
    t.string "active_ingredient_trade_name", null: false
    t.string "medicine_dosage"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inhaler_device_type", "active_ingredient_inn"], name: "by_inhaler_type_and_inn"
  end

  create_table "niv_prescriptions", force: :cascade do |t|
    t.bigint "pulmonary_appointment_id"
    t.string "bipap"
    t.string "ipap"
    t.string "epap"
    t.string "cpap"
    t.string "pressure"
    t.string "hours"
    t.string "oxygen"
    t.string "mask"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pulmonary_appointment_id", "id"], name: "index_niv_prescriptions_on_pulmonary_appointment_id_and_id"
    t.index ["pulmonary_appointment_id"], name: "index_niv_prescriptions_on_pulmonary_appointment_id"
  end

  create_table "office_locations", force: :cascade do |t|
    t.string "location_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_name"], name: "index_office_locations_on_location_name", unique: true
  end

  create_table "oxygen_therapy_prescriptions", force: :cascade do |t|
    t.bigint "pulmonary_appointment_id"
    t.string "oxygen_therapy_supplier"
    t.integer "flow"
    t.integer "number_hours"
    t.boolean "oxygen_tank", default: false
    t.boolean "liquid_oxygen", default: false
    t.boolean "oxygen_concentrator", default: false
    t.boolean "oxygen_concentrator_tank", default: false
    t.boolean "portable_oxygen_concentrator", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pulmonary_appointment_id", "id"], name: "by_appointment_o2"
    t.index ["pulmonary_appointment_id"], name: "index_oxygen_therapy_prescriptions_on_pulmonary_appointment_id"
  end

  create_table "oxygen_therapy_suppliers", force: :cascade do |t|
    t.string "supplier_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_name"], name: "index_oxygen_therapy_suppliers_on_supplier_name", unique: true
  end

  create_table "patients", force: :cascade do |t|
    t.string "name", null: false
    t.date "date_of_birth", null: false
    t.integer "rnu", null: false
    t.integer "npsonho", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_patients_on_name"
    t.index ["npsonho"], name: "index_patients_on_npsonho", unique: true
    t.index ["rnu"], name: "index_patients_on_rnu", unique: true
  end

  create_table "prescribed_inhalers", force: :cascade do |t|
    t.bigint "pulmonary_appointment_id"
    t.bigint "inhaler_device_id"
    t.integer "before_technic"
    t.integer "after_technic"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inhaler_device_id"], name: "index_prescribed_inhalers_on_inhaler_device_id"
    t.index ["pulmonary_appointment_id", "id"], name: "index_prescribed_inhalers_on_pulmonary_appointment_id_and_id"
    t.index ["pulmonary_appointment_id"], name: "index_prescribed_inhalers_on_pulmonary_appointment_id"
  end

  create_table "pulmonary_appointments", force: :cascade do |t|
    t.date "appointment_date", null: false
    t.integer "weight"
    t.string "blood_pressure"
    t.integer "pulse"
    t.integer "oxygen"
    t.integer "pef"
    t.boolean "inhaler", default: false
    t.text "medication"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["patient_id", "appointment_date"], name: "index_pulmonary_appointments_on_patient_id_and_appointment_date"
    t.index ["patient_id"], name: "index_pulmonary_appointments_on_patient_id"
    t.index ["user_id"], name: "index_pulmonary_appointments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "tiss_evaluations", force: :cascade do |t|
    t.date "evaluation_date", null: false
    t.decimal "score", null: false
    t.integer "ba_q1", null: false
    t.integer "ba_q2", null: false
    t.integer "ba_q3", null: false
    t.integer "ba_q4", null: false
    t.integer "ba_q5", null: false
    t.integer "ba_q6", null: false
    t.integer "ba_q7", null: false
    t.integer "vs_q1", null: false
    t.integer "vs_q2", null: false
    t.integer "vs_q3", null: false
    t.integer "vs_q4", null: false
    t.integer "cs_q1", null: false
    t.integer "cs_q2", null: false
    t.integer "cs_q3", null: false
    t.integer "cs_q4", null: false
    t.integer "cs_q5", null: false
    t.integer "cs_q6", null: false
    t.integer "cs_q7", null: false
    t.integer "rs_q1", null: false
    t.integer "rs_q2", null: false
    t.integer "rs_q3", null: false
    t.integer "ns_q1", null: false
    t.integer "ms_q1", null: false
    t.integer "ms_q2", null: false
    t.integer "ms_q3", null: false
    t.integer "si_q1", null: false
    t.integer "si_q2", null: false
    t.integer "si_q3", null: false
    t.bigint "patient_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id", "evaluation_date"], name: "index_tiss_evaluations_on_patient_id_and_evaluation_date"
    t.index ["patient_id"], name: "index_tiss_evaluations_on_patient_id"
    t.index ["user_id"], name: "index_tiss_evaluations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", null: false
    t.integer "employee_id", null: false
    t.string "title"
    t.integer "phone_number"
    t.integer "cellphone_number"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "office_location_id"
    t.bigint "department_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employee_id"], name: "index_users_on_employee_id", unique: true
    t.index ["full_name"], name: "index_users_on_full_name"
    t.index ["office_location_id"], name: "index_users_on_office_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "niv_prescriptions", "pulmonary_appointments"
  add_foreign_key "oxygen_therapy_prescriptions", "pulmonary_appointments"
  add_foreign_key "prescribed_inhalers", "inhaler_devices"
  add_foreign_key "prescribed_inhalers", "pulmonary_appointments"
  add_foreign_key "pulmonary_appointments", "patients"
  add_foreign_key "pulmonary_appointments", "users"
  add_foreign_key "tiss_evaluations", "patients"
  add_foreign_key "tiss_evaluations", "users"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "office_locations"
end
