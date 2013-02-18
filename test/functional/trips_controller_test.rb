require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { code: @trip.code, destination: @trip.destination, end_date: @trip.end_date, organizer: @trip.organizer, start_date: @trip.start_date, tour_name: @trip.tour_name, trip_status: @trip.trip_status, trip_type: @trip.trip_type }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    put :update, id: @trip, trip: { code: @trip.code, destination: @trip.destination, end_date: @trip.end_date, organizer: @trip.organizer, start_date: @trip.start_date, tour_name: @trip.tour_name, trip_status: @trip.trip_status, trip_type: @trip.trip_type }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
