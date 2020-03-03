require 'test_helper'

class Producto::ModelosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_modelo = producto_modelos(:one)
  end

  test "should get index" do
    get producto_modelos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_modelo_url
    assert_response :success
  end

  test "should create producto_modelo" do
    assert_difference('Producto::Modelo.count') do
      post producto_modelos_url, params: { producto_modelo: { activo: @producto_modelo.activo, modelo: @producto_modelo.modelo } }
    end

    assert_redirected_to producto_modelo_url(Producto::Modelo.last)
  end

  test "should show producto_modelo" do
    get producto_modelo_url(@producto_modelo)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_modelo_url(@producto_modelo)
    assert_response :success
  end

  test "should update producto_modelo" do
    patch producto_modelo_url(@producto_modelo), params: { producto_modelo: { activo: @producto_modelo.activo, modelo: @producto_modelo.modelo } }
    assert_redirected_to producto_modelo_url(@producto_modelo)
  end

  test "should destroy producto_modelo" do
    assert_difference('Producto::Modelo.count', -1) do
      delete producto_modelo_url(@producto_modelo)
    end

    assert_redirected_to producto_modelos_url
  end
end
