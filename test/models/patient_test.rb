require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  
  def setup
    @patient = Patient.new(name: 'Patient Demo', date_birth: '25-12-1950', rnu: 123456789, npsonho: 123456)
  end

  test "should be valid" do
    assert @patient.valid?
  end

  test "name should be present" do
    @patient.name = '  '
    assert_not @patient.valid?
  end

  test "date of birth should be present" do
    @patient.date_birth = '  '
    assert_not @patient.valid?
  end

  test "RNU should be present" do
    @patient.rnu = '  '
    assert_not @patient.valid?
  end

  test "NP SONHO should be present" do
    @patient.npsonho = '  '
    assert_not @patient.valid?
  end

  test "RNU should be unique" do
    duplicate_patient = @patient.dup
    @patient.save
    assert_not duplicate_patient.valid?
  end

  test "NP SONHO should be unique" do
    duplicate_patient = @patient.dup
    @patient.save
    assert_not duplicate_patient.valid?
  end

  test "RNU should be numeric" do
    @patient.rnu = 'abc'
    assert_not @patient.valid?
  end

  test "NP SONHO should be numeric" do
    @patient.npsonho = 'def'
    assert_not @patient.valid?
  end

  test "RNU should be of length 9" do
    @patient.rnu = 123456
    assert_not @patient.valid?
  end

  test "NP SONHO should be of length 6" do
    @patient.npsonho = 12345
    assert_not @patient.valid?
  end

  test "RNU should be integer" do
    @patient.rnu = 123456789.5
    assert_not @patient.valid?
  end

  test "NP SONHO should be integer" do
    @patient.npsonho = 123456.5
    assert_not @patient.valid?
  end
end
