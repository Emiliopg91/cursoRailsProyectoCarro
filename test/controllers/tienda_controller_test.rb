require 'test_helper'

class TiendaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get quienes_somos" do
    get :quienes_somos
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get carro" do
    get :carro
    assert_response :success
  end

end
