require 'test_helper'

class SfprojectsControllerTest < ActionController::TestCase
  setup do
    @sfproject = sfprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sfprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sfproject" do
    assert_difference('Sfproject.count') do
      post :create, sfproject: { fullname: @sfproject.fullname, module_id: @sfproject.module_id, name: @sfproject.name, release_id: @sfproject.release_id, scope_id: @sfproject.scope_id }
    end

    assert_redirected_to sfproject_path(assigns(:sfproject))
  end

  test "should show sfproject" do
    get :show, id: @sfproject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sfproject
    assert_response :success
  end

  test "should update sfproject" do
    patch :update, id: @sfproject, sfproject: { fullname: @sfproject.fullname, module_id: @sfproject.module_id, name: @sfproject.name, release_id: @sfproject.release_id, scope_id: @sfproject.scope_id }
    assert_redirected_to sfproject_path(assigns(:sfproject))
  end

  test "should destroy sfproject" do
    assert_difference('Sfproject.count', -1) do
      delete :destroy, id: @sfproject
    end

    assert_redirected_to sfprojects_path
  end
end
