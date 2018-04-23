require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(
      title: "Mr.",
      full_name: "User Number One",
      employee_id: 12345,
      phone_number: 1234,
      cellphone_number: 12345,
      email: "n1@ulsne.min-saude.pt",
      password: "password123",
      password_confirmation: "password123",
      office_location_id: 1,
      department_id: 1
    )
  end

  #test "user should be valid" do
    #assert @user.valid?
  #end

  #test "user name should be present" do
    #@user.full_name = " "
    #assert_not @user.valid?
  #end

  #test "employee id should be present" do
    #@user.employee_id = " "
    #assert_not @user.valid?
  #end

end