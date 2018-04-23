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
  appointment_date = Faker::Date.between(2.years.ago, Date.today)
  weight = Faker::Number.between(50, 100)
  blood_pressure = Faker::Number.decimal(2, 2)
  pulse = Faker::Number.between(50, 80)
  oxygen = Faker::Number.between(90, 99)
  pef = Faker::Number.number(2)
  inhaler = Faker::Boolean.boolean
  medication = Faker::ChuckNorris.fact

  patients.each { |patient| patient.pulmonary_appointments.create!(
    appointment_date: appointment_date,
    weight: weight,
    blood_pressure: blood_pressure,
    pulse: pulse,
    oxygen: oxygen,
    pef: pef,
    inhaler: inhaler,
    medication: medication
  )}
end

# Office locations
OfficeLocation.create!(location_name: "Hospital de Bragança")
OfficeLocation.create!(location_name: "Hospital de Macedo de Cavaleiros")
OfficeLocation.create!(location_name: "Hospital de Mirandela")
OfficeLocation.create!(location_name: "CS de Alfândega da Fé")
OfficeLocation.create!(location_name: "CS de Bragança - Sé")
OfficeLocation.create!(location_name: "CS de Bragança - Santa Maria")
OfficeLocation.create!(location_name: "CS de Vinhais")
OfficeLocation.create!(location_name: "CS de Macedo de Cavaleiros")
OfficeLocation.create!(location_name: "CS de Mirandela I")
OfficeLocation.create!(location_name: "CS de Mirandela II")
OfficeLocation.create!(location_name: "CS de Miranda do Douro")
OfficeLocation.create!(location_name: "CS de Vimioso")
OfficeLocation.create!(location_name: "CS de Mogadouro")
OfficeLocation.create!(location_name: "CS de Torre de Moncorvo")
OfficeLocation.create!(location_name: "CS de Freixo de Espada à Cinta")
OfficeLocation.create!(location_name: "CS de Vila Flor")
OfficeLocation.create!(location_name: "CS de Carrazeda de Ansiães")
OfficeLocation.create!(location_name: "Praça Cavaleiro Ferreira")
OfficeLocation.create!(location_name: "UDEP")