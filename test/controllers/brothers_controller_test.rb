require 'test_helper'

class BrothersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brothers_index_url
    assert_response :success
  end

  test "should get show" do
    get brothers_show_url
    assert_response :success
  end

  test "should get new" do
    get brothers_new_url
    assert_response :success
  end

  test "should get create" do
    get brothers_create_url
    assert_response :success
  end

  test "should get edit" do
    get brothers_edit_url
    assert_response :success
  end

  test "should get update" do
    get brothers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get brothers_destroy_url
    assert_response :success
  end

end
