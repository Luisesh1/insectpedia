require 'test_helper'

class InsectsControllerTest < ActionController::TestCase
  setup do
    @insect = insects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insect" do
    assert_difference('Insect.count') do
      post :create, insect: {  }
    end

    assert_redirected_to insect_path(assigns(:insect))
  end

  test "should show insect" do
    get :show, id: @insect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insect
    assert_response :success
  end

  test "should update insect" do
    patch :update, id: @insect, insect: {  }
    assert_redirected_to insect_path(assigns(:insect))
  end

  test "should destroy insect" do
    assert_difference('Insect.count', -1) do
      delete :destroy, id: @insect
    end

    assert_redirected_to insects_path
  end
end
