require 'test_helper'

class Admin::FeaturesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_features_controller_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_features_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_features_controller_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_features_controller_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_features_controller_update_url
    assert_response :success
  end

  test "should get destroq" do
    get admin_features_controller_destroq_url
    assert_response :success
  end

end
