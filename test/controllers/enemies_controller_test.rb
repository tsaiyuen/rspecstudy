require 'test_helper'

class EnemiesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get enemies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get enemies_destroy_url
    assert_response :success
  end

end
