require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { capacity: @vehicle.capacity, description: @vehicle.description, efficiency: @vehicle.efficiency, emissions: @vehicle.emissions, name: @vehicle.name, public: @vehicle.public, registration_state: @vehicle.registration_state, registration_year: @vehicle.registration_year, type_id: @vehicle.type_id }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    put :update, id: @vehicle, vehicle: { capacity: @vehicle.capacity, description: @vehicle.description, efficiency: @vehicle.efficiency, emissions: @vehicle.emissions, name: @vehicle.name, public: @vehicle.public, registration_state: @vehicle.registration_state, registration_year: @vehicle.registration_year, type_id: @vehicle.type_id }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
