# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# create 100 patients
100.times do |p|
  name = Faker::Name.name
  date_birth = Faker::Date.birthday(40, 80)
  rnu = Faker::Number.number(9)
  npsonho = Faker::Number.number(6)

  Patient.create!(
    name: name,
    date_birth: date_birth,
    rnu: rnu,
    npsonho: npsonho
  )
end