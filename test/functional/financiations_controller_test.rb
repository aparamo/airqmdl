require 'test_helper'

class FinanciationsControllerTest < ActionController::TestCase
  setup do
    @financiation = financiations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financiations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financiation" do
    assert_difference('Financiation.count') do
      post :create, financiation: { description: @financiation.description, financiation_type: @financiation.financiation_type, name: @financiation.name, organization_id: @financiation.organization_id, program_id: @financiation.program_id }
    end

    assert_redirected_to financiation_path(assigns(:financiation))
  end

  test "should show financiation" do
    get :show, id: @financiation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financiation
    assert_response :success
  end

  test "should update financiation" do
    put :update, id: @financiation, financiation: { description: @financiation.description, financiation_type: @financiation.financiation_type, name: @financiation.name, organization_id: @financiation.organization_id, program_id: @financiation.program_id }
    assert_redirected_to financiation_path(assigns(:financiation))
  end

  test "should destroy financiation" do
    assert_difference('Financiation.count', -1) do
      delete :destroy, id: @financiation
    end

    assert_redirected_to financiations_path
  end
end
