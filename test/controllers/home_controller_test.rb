require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get LogIn" do
    get home_LogIn_url
    assert_response :success
  end

  test "should get SignUp" do
    get home_SignUp_url
    assert_response :success
  end

  test "should get Update" do
    get home_Update_url
    assert_response :success
  end

  test "should get Profile" do
    get home_Profile_url
    assert_response :success
  end
end
