require 'test_helper'

class SfmodulesControllerTest < ActionController::TestCase
  setup do
    @sfmodule = sfmodules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sfmodules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sfmodule" do
    assert_difference('Sfmodule.count') do
      post :create, sfmodule: { name: @sfmodule.name }
    end

    assert_redirected_to sfmodule_path(assigns(:sfmodule))
  end

  test "should show sfmodule" do
    get :show, id: @sfmodule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sfmodule
    assert_response :success
  end

  test "should update sfmodule" do
    patch :update, id: @sfmodule, sfmodule: { name: @sfmodule.name }
    assert_redirected_to sfmodule_path(assigns(:sfmodule))
  end

  test "should destroy sfmodule" do
    assert_difference('Sfmodule.count', -1) do
      delete :destroy, id: @sfmodule
    end

    assert_redirected_to sfmodules_path
  end
end
