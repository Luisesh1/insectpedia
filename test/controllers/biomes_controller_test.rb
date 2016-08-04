require 'test_helper'

class BiomesControllerTest < ActionController::TestCase
  setup do
    @biome = biomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biome" do
    assert_difference('Biome.count') do
      post :create, biome: {  }
    end

    assert_redirected_to biome_path(assigns(:biome))
  end

  test "should show biome" do
    get :show, id: @biome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biome
    assert_response :success
  end

  test "should update biome" do
    patch :update, id: @biome, biome: {  }
    assert_redirected_to biome_path(assigns(:biome))
  end

  test "should destroy biome" do
    assert_difference('Biome.count', -1) do
      delete :destroy, id: @biome
    end

    assert_redirected_to biomes_path
  end
end
