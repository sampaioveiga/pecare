# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# create 100 patients
100.times do |p|
  name = Faker::Name.name
  date_of_birth = Faker::Date.birthday(40, 80)
  rnu = Faker::Number.number(9)
  npsonho = Faker::Number.number(6)

  Patient.create!(
    name: name,
    date_of_birth: date_of_birth,
    rnu: rnu,
    npsonho: npsonho
  )
end

# create pulmonary appointments
patients = Patient.order(:created_at).take(80)
2.times do
  date = Faker::Date.between(2.years.ago, Date.today)
  weight = Faker::Number.between(50, 100)
  blood_pressure = Faker::Number.decimal(2, 2)
  pulse = Faker::Number.between(50, 80)
  oxygen = Faker::Number.between(90, 99)
  pef = Faker::Number.number(2)
  inhaler = Faker::Boolean.boolean
  medication = Faker::ChuckNorris.fact

  patients.each { |patient| patient.pulmonary_appointments.create!(
    date: date,
    weight: weight,
    blood_pressure: blood_pressure,
    pulse: pulse,
    oxygen: oxygen,
    pef: pef,
    inhaler: inhaler,
    medication: medication
  )}
end