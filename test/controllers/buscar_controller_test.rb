require 'test_helper'

class BuscarControllerTest < ActionController::TestCase
  test "should get partes" do
    get :partes
    assert_response :success
  end

  test "should get region" do
    get :region
    assert_response :success
  end

  test "should get especie" do
    get :especie
    assert_response :success
  end

end
