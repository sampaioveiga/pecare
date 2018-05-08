# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Office locations with definitive data
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

# Departments with definitive data
Department.create!(department_name: "Informática e Comunicações")
Department.create!(department_name: "Medicina Interna")
Department.create!(department_name: "Hospital Dia")
Department.create!(department_name: "Ortopedia")
Department.create!(department_name: "Unidade de Cuidados na Comunidade")
Department.create!(department_name: "Unidade Cuidados de Saúde Personalizados")
Department.create!(department_name: "Consulta Externa")
Department.create!(department_name: "AVC")
Department.create!(department_name: "Gabinete do Cidadão")
Department.create!(department_name: "Apoio Social")
Department.create!(department_name: "Gestão de Utentes")
Department.create!(department_name: "Hotelaria e Transportes")
Department.create!(department_name: "PPCIRA")
Department.create!(department_name: "Urgência Médico-Cirurgica")
Department.create!(department_name: "Urgência Básica")
Department.create!(department_name: "Cuidados Intensivos")
Department.create!(department_name: "Bloco Operatório")
Department.create!(department_name: "Anestesiologia")
Department.create!(department_name: "Cirurgia Geral")
Department.create!(department_name: "Estomatologia")
Department.create!(department_name: "Otorrinolaringologia")
Department.create!(department_name: "Urologia")
Department.create!(department_name: "Cardiologia")
Department.create!(department_name: "Medicina Física e Reabilitação")
Department.create!(department_name: "Nefrologia")
Department.create!(department_name: "Neurologia")
Department.create!(department_name: "Gastrenterologia")
Department.create!(department_name: "Pneumologia")
Department.create!(department_name: "Oncologia")
Department.create!(department_name: "Ginecologia e Obstetrícia")
Department.create!(department_name: "Pediatria e Neonatologia")
Department.create!(department_name: "Saúde Mental")
Department.create!(department_name: "Pedopsiquiatria")
Department.create!(department_name: "Psicologia Clínica")
Department.create!(department_name: "Imagiologia")
Department.create!(department_name: "Patologia Clínica")
Department.create!(department_name: "Medicina Transfusional")
Department.create!(department_name: "Medicina Intensiva")
Department.create!(department_name: "Saúde Pública")
Department.create!(department_name: "Unidade  Cuidados Paliativos")
Department.create!(department_name: "Esterilização")
Department.create!(department_name: "Farmácia Hospitalar")
Department.create!(department_name: "Nutrição e Alimentação")
Department.create!(department_name: "Internato Médico")
Department.create!(department_name: "Codificação Clínica")
Department.create!(department_name: "Apoio ao Conselho")
Department.create!(department_name: "Comunicação e Imagem")
Department.create!(department_name: "Jurídico e Contencioso")
Department.create!(department_name: "Planeamento e Controlo")
Department.create!(department_name: "Qualidade")
Department.create!(department_name: "Assistência Espiritual e Religiosa")
Department.create!(department_name: "Compras e Logística")
Department.create!(department_name: "Contabilidade e Gestão Financeira")
Department.create!(department_name: "Formação e Desenvolvimento")
Department.create!(department_name: "Instalações e Equipamentos")
Department.create!(department_name: "Recursos Humanos")
Department.create!(department_name: "Saúde e Risco Ocupacional")
Department.create!(department_name: "Cirurgia de Ambulatório")
Department.create!(department_name: "Oftalmologia")
Department.create!(department_name: "Auditoria")
Department.create!(department_name: "Arquivo clínico")
Department.create!(department_name: "Admissão de Doentes")

InhalerDeviceType.create!(inhaler_type_name: "Pressurizados")
InhalerDeviceType.create!(inhaler_type_name: "Aeroliser")
InhalerDeviceType.create!(inhaler_type_name: "Handihaler")
InhalerDeviceType.create!(inhaler_type_name: "Turbohaler")
InhalerDeviceType.create!(inhaler_type_name: "Diskus")
InhalerDeviceType.create!(inhaler_type_name: "Breezehaler")
InhalerDeviceType.create!(inhaler_type_name: "Ellipta")
InhalerDeviceType.create!(inhaler_type_name: "Genuair")
InhalerDeviceType.create!(inhaler_type_name: "Rotacaps")
InhalerDeviceType.create!(inhaler_type_name: "Novolizer")
InhalerDeviceType.create!(inhaler_type_name: "Spiromax")
InhalerDeviceType.create!(inhaler_type_name: "Aerosolterapia")

#20.times do
#  active_ingredient_inn = Faker::Dessert.flavor
#  active_ingredient_trade_name = Faker::Dessert.topping
#  medicine_dosage = Faker::Number.decimal(2)
#  inhaler_device_type = Faker::Number.between(1, 12)
#  InhalerDevice.create!(
#    active_ingredient_inn: active_ingredient_inn,
#    active_ingredient_trade_name: active_ingredient_trade_name,
#    medicine_dosage: medicine_dosage,
#    inhaler_device_type_id: inhaler_device_type
#  )
#end
InhalerDevice.create!(inhaler_device_type: "Pressurizados", active_ingredient_inn: "Ventilan", active_ingredient_trade_name: "Salbutamol")
InhalerDevice.create!(inhaler_device_type: "Aeroliser", active_ingredient_inn: "Asmatec", active_ingredient_trade_name: "Salbu")
InhalerDevice.create!(inhaler_device_type: "Aeroliser", active_ingredient_inn: "Miflonede", active_ingredient_trade_name: "Busedonida", medicine_dosage: "200")
InhalerDevice.create!(inhaler_device_type: "Aeroliser", active_ingredient_inn: "Miflonede", active_ingredient_trade_name: "Busedonida", medicine_dosage: "400")
InhalerDevice.create!(inhaler_device_type: "Breezehaler", active_ingredient_inn: "Onbrez", active_ingredient_trade_name: "Buse", medicine_dosage: "150")
InhalerDevice.create!(inhaler_device_type: "Breezehaler", active_ingredient_inn: "Onbrez", active_ingredient_trade_name: "Buse", medicine_dosage: "300")
InhalerDevice.create!(inhaler_device_type: "Breezehaler", active_ingredient_inn: "Oslif", active_ingredient_trade_name: "Salbu", medicine_dosage: "150")
InhalerDevice.create!(inhaler_device_type: "Breezehaler", active_ingredient_inn: "Oslif", active_ingredient_trade_name: "Salbu", medicine_dosage: "300")

# users 1 & 2
user = User.new(
  title: "Eng.",
  full_name: "Miguel Sampaio",
  employee_id: 40234,
  phone_number: 1306,
  cellphone_number: 51393,
  email: "miguel.veiga@ulsne.min-saude.pt",
  password: "123456",
  password_confirmation: "123456",
  department_id: 1,
  office_location_id: 1,
  admin: true
)
user.skip_confirmation!
user.save!
user = User.new(
  title: "Enf.",
  full_name: "Nurse One",
  employee_id: 12345,
  phone_number: 1306,
  cellphone_number: 51393,
  email: "12345@ulsne.min-saude.pt",
  password: "123456",
  password_confirmation: "123456",
  department_id: 28,
  office_location_id: 1,
  admin: false
)
user.skip_confirmation!
user.save!

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
    npsonho: npsonho,
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
  user_id = 2

  patients.each { |patient| patient.pulmonary_appointments.create!(
    appointment_date: appointment_date,
    weight: weight,
    blood_pressure: blood_pressure,
    pulse: pulse,
    oxygen: oxygen,
    pef: pef,
    inhaler: inhaler,
    medication: medication,
    user_id: user_id
  )}
end