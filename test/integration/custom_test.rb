require 'test_helper'

class CustomTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do 
    get '/login'
    assert_response :success 
  end 
  test "that /logout route opens the login page" do 
     get '/logout'
     assert_response :redirect
     assert_redirected_to '/' 
   end
   test "that /register route opens the login page" do 
      get '/register'
      assert_response :success
    end
    test "that a profile page works" do 
      get '/dgross881'
      assert_response :success
    end 
end