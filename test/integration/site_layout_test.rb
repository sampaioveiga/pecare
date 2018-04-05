require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template "static_pages/index"
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", static_pages_help_path

    get static_pages_help_path
    assert_template "static_pages/help"
    assert_select "li.active", count: 1
  end
end
