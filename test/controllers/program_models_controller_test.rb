require 'test_helper'

class ProgramModelsControllerTest < ActionController::TestCase
  setup do
    @program_model = program_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_model" do
    assert_difference('ProgramModel.count') do
      post :create, program_model: { name: @program_model.name }
    end

    assert_redirected_to program_model_path(assigns(:program_model))
  end

  test "should show program_model" do
    get :show, id: @program_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_model
    assert_response :success
  end

  test "should update program_model" do
    patch :update, id: @program_model, program_model: { name: @program_model.name }
    assert_redirected_to program_model_path(assigns(:program_model))
  end

  test "should destroy program_model" do
    assert_difference('ProgramModel.count', -1) do
      delete :destroy, id: @program_model
    end

    assert_redirected_to program_models_path
  end
end
