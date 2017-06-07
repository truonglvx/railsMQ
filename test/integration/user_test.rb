require 'test_helper'

class UserTest < ActionDispatch::IntegrationTest
  test "sign up test" do
    get signup_path
    assert_template 'users/new'
    assert_select "title", full_title("Sign up")
  end
end
