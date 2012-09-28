require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  setup do
    @ride = rides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ride" do
    assert_difference('Ride.count') do
      post :create, ride: { comments: @ride.comments, date_range_end: @ride.date_range_end, date_range_start: @ride.date_range_start, email: @ride.email, first_name: @ride.first_name, last_name: @ride.last_name, phash: @ride.phash, phone_number: @ride.phone_number, request: @ride.request }
    end

    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should show ride" do
    get :show, id: @ride
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ride
    assert_response :success
  end

  test "should update ride" do
    put :update, id: @ride, ride: { comments: @ride.comments, date_range_end: @ride.date_range_end, date_range_start: @ride.date_range_start, email: @ride.email, first_name: @ride.first_name, last_name: @ride.last_name, phash: @ride.phash, phone_number: @ride.phone_number, request: @ride.request }
    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should destroy ride" do
    assert_difference('Ride.count', -1) do
      delete :destroy, id: @ride
    end

    assert_redirected_to rides_path
  end
end
