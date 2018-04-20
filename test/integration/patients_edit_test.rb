require 'test_helper'

class PatientsEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @patient = patients(:first_patient)
  end

  test "unsuccessfull patient edit" do
    get edit_patient_path(@patient)
    assert_template 'patients/edit'
    patch patient_path(@patient), params: {
      patient: {
        name: "",
        date_of_birth: "",
        rnu: 1234567,
        npsonho: 1234
      }
    }
    assert_template 'patients/edit'
  end

  test "successfull patient edit" do
    get edit_patient_path(@patient)
    assert_template 'patients/edit'
    name = "Another name"
    date_of_birth = "25/12/1950"
    rnu = 101202303
    npsonho = 102030
    patch patient_path(@patient), params: {
      patient: {
        name: name,
        date_of_birth: date_birth,
        rnu: rnu,
        npsonho: npsonho
      }
    }
    assert_not flash.empty?
    assert_redirected_to @patient
    @patient.reload
    assert_equal name, @patient.name
    #assert_equal date_birth, @patient.date_birth
    assert_equal rnu, @patient.rnu
    assert_equal npsonho, @patient.npsonho
  end

end