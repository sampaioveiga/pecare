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

ActiveRecord::Schema.define(version: 20180430091928) do

  create_table "departments", force: :cascade do |t|
    t.string "department_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_name"], name: "index_departments_on_department_name", unique: true
  end

  create_table "office_locations", force: :cascade do |t|
    t.string "location_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_name"], name: "index_office_locations_on_location_name", unique: true
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
    t.index [nil, nil], name: "index_patients_on_patient_id_and_appointment_date"
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
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["patient_id"], name: "index_pulmonary_appointments_on_patient_id"
    t.index ["user_id"], name: "index_pulmonary_appointments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "title"
    t.string "full_name", null: false
    t.integer "employee_id", null: false
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
    t.integer "office_location_id"
    t.integer "department_id"
    t.boolean "admin", default: false, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employee_id"], name: "index_users_on_employee_id", unique: true
    t.index ["full_name"], name: "index_users_on_full_name"
    t.index ["office_location_id"], name: "index_users_on_office_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
