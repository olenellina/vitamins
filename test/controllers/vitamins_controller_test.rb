require 'test_helper'

class VitaminsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vitamins_new_url
    assert_response :success
  end

  test "should get create" do
    get vitamins_create_url
    assert_response :success
  end

  test "should get update" do
    get vitamins_update_url
    assert_response :success
  end

  test "should get edit" do
    get vitamins_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get vitamins_destroy_url
    assert_response :success
  end

  test "should get index" do
    get vitamins_index_url
    assert_response :success
  end

  test "should get show" do
    get vitamins_show_url
    assert_response :success
  end

end
