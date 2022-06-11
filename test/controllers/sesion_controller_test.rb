require "test_helper"

class SesionControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get sesion_login_url
    assert_response :success
  end

  test "should get signIn" do
    get sesion_signIn_url
    assert_response :success
  end

  test "should get logout" do
    get sesion_logout_url
    assert_response :success
  end
end
