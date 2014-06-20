require 'test_helper'

class UnosControllerTest < ActionController::TestCase
  setup do
    @uno = unos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uno" do
    assert_difference('Uno.count') do
      post :create, uno: { num: @uno.num }
    end

    assert_redirected_to uno_path(assigns(:uno))
  end

  test "should show uno" do
    get :show, id: @uno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uno
    assert_response :success
  end

  test "should update uno" do
    patch :update, id: @uno, uno: { num: @uno.num }
    assert_redirected_to uno_path(assigns(:uno))
  end

  test "should destroy uno" do
    assert_difference('Uno.count', -1) do
      delete :destroy, id: @uno
    end

    assert_redirected_to unos_path
  end
end
