require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Início | PeCARE"
  end
  
  test "should get index" do
    get static_pages_index_url
    assert_response :success
    assert_select "title", "Início | PeCARE"
  end

end
