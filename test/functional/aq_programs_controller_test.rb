require 'test_helper'

class AqProgramsControllerTest < ActionController::TestCase
  setup do
    @aq_program = aq_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aq_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aq_program" do
    assert_difference('AqProgram.count') do
      post :create, aq_program: { aq_type_id: @aq_program.aq_type_id, date_of_creation: @aq_program.date_of_creation, description: @aq_program.description, financiation_id: @aq_program.financiation_id, locale: @aq_program.locale, name: @aq_program.name, public: @aq_program.public, regulation_id: @aq_program.regulation_id }
    end

    assert_redirected_to aq_program_path(assigns(:aq_program))
  end

  test "should show aq_program" do
    get :show, id: @aq_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aq_program
    assert_response :success
  end

  test "should update aq_program" do
    put :update, id: @aq_program, aq_program: { aq_type_id: @aq_program.aq_type_id, date_of_creation: @aq_program.date_of_creation, description: @aq_program.description, financiation_id: @aq_program.financiation_id, locale: @aq_program.locale, name: @aq_program.name, public: @aq_program.public, regulation_id: @aq_program.regulation_id }
    assert_redirected_to aq_program_path(assigns(:aq_program))
  end

  test "should destroy aq_program" do
    assert_difference('AqProgram.count', -1) do
      delete :destroy, id: @aq_program
    end

    assert_redirected_to aq_programs_path
  end
end
