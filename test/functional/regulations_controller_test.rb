require 'test_helper'

class RegulationsControllerTest < ActionController::TestCase
  setup do
    @regulation = regulations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regulations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regulation" do
    assert_difference('Regulation.count') do
      post :create, regulation: { aq_program_id: @regulation.aq_program_id, description: @regulation.description, name: @regulation.name, regulation_type: @regulation.regulation_type, vehicle_id: @regulation.vehicle_id }
    end

    assert_redirected_to regulation_path(assigns(:regulation))
  end

  test "should show regulation" do
    get :show, id: @regulation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regulation
    assert_response :success
  end

  test "should update regulation" do
    put :update, id: @regulation, regulation: { aq_program_id: @regulation.aq_program_id, description: @regulation.description, name: @regulation.name, regulation_type: @regulation.regulation_type, vehicle_id: @regulation.vehicle_id }
    assert_redirected_to regulation_path(assigns(:regulation))
  end

  test "should destroy regulation" do
    assert_difference('Regulation.count', -1) do
      delete :destroy, id: @regulation
    end

    assert_redirected_to regulations_path
  end
end
