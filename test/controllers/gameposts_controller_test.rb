require 'test_helper'

class GamepostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gameposts_index_url
    assert_response :success
  end

  test "should get new" do
    get gameposts_new_url
    assert_response :success
  end

  test "should get create" do
    get gameposts_create_url
    assert_response :success
  end

  test "should get show" do
    get gameposts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get gameposts_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get gameposts_edit_url
    assert_response :success
  end

  test "should get update" do
    get gameposts_update_url
    assert_response :success
  end

end
