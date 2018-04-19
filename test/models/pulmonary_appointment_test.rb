require 'test_helper'

class PulmonaryAppointmentTest < ActiveSupport::TestCase
  def setup
    @patient = patients(:first_patient)
    @pulmonary_appointment = @patient.pulmonary_appointments.build(
      date: 25/12/2018,
      weight: 10,
      blood_pressure_1: 20,
      blood_pressure_2: 30,
      pulse: 40,
      oxygen: 50,
      pef: 60,
      inhaler: false,
      medication: "Some medication"
    )
  end

  test "pulmonary appointment should be valid" do
    assert @pulmonary_appointment.valid?
  end

  test "patient id shoud be present" do
    @pulmonary_appointment.patient_id = nil
    assert_not @pulmonary_appointment.valid?
  end

  test "date shoud be present" do
    @pulmonary_appointment.date = nil
    assert_not @pulmonary_appointment.valid?
  end

  test "order should be most recent first" do
    assert_equal pulmonary_appointments(:two), PulmonaryAppointment.first
  end

end
