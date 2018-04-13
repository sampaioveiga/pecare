require 'test_helper'

class PatientsCreationTest < ActionDispatch::IntegrationTest
  
  test "invalid new Patient information" do
    get new_patient_path
    assert_no_difference 'Patient.count' do
      post patients_path, params: { patient: { name: "",
                                              date_birth: "",
                                              rnu: "",
                                              npsonho: "" } }
    end
    assert_template 'patients/new'
  end

  test "valid new Patient information" do
    get new_patient_path
    assert_difference 'Patient.count' do
      post patients_path, params: { patient: { name: "Patient name",
                                              date_birth: "25/12/1950",
                                              rnu: 123456789,
                                              npsonho: 123456 } }
    end
    follow_redirect!
    assert_template 'patients/show'
  end
end
