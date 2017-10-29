require 'test_helper'

class Admin::CheckSectionSlugControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_check_section_slug_show_url
    assert_response :success
  end

end
