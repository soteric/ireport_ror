require 'test_helper'

class SfpillarsControllerTest < ActionController::TestCase
  setup do
    @sfpillar = sfpillars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sfpillars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sfpillar" do
    assert_difference('Sfpillar.count') do
      post :create, sfpillar: { name: @sfpillar.name }
    end

    assert_redirected_to sfpillar_path(assigns(:sfpillar))
  end

  test "should show sfpillar" do
    get :show, id: @sfpillar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sfpillar
    assert_response :success
  end

  test "should update sfpillar" do
    patch :update, id: @sfpillar, sfpillar: { name: @sfpillar.name }
    assert_redirected_to sfpillar_path(assigns(:sfpillar))
  end

  test "should destroy sfpillar" do
    assert_difference('Sfpillar.count', -1) do
      delete :destroy, id: @sfpillar
    end

    assert_redirected_to sfpillars_path
  end
end
