require 'test_helper'

class MealControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get meals" do
    get :meals
    assert_response :success
  end

  test "should get breakfast" do
    get :breakfast
    assert_response :success
  end

  test "should get lunch" do
    get :lunch
    assert_response :success
  end

  test "should get dinner" do
    get :dinner
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

end
