require 'test_helper'

class WeaponsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weapons_index_url
    assert_response :success
  end

  test "should get create" do
    get weapons_create_url
    assert_response :success
  end

  test "should get delete" do
    get weapons_delete_url
    assert_response :success
  end

  test "should get show" do
    get weapons_show_url
    assert_response :success
  end

end
