require 'test_helper'

class Producto::MarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_marca = producto_marcas(:one)
  end

  test "should get index" do
    get producto_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_marca_url
    assert_response :success
  end

  test "should create producto_marca" do
    assert_difference('Producto::Marca.count') do
      post producto_marcas_url, params: { producto_marca: { activo: @producto_marca.activo, marca: @producto_marca.marca } }
    end

    assert_redirected_to producto_marca_url(Producto::Marca.last)
  end

  test "should show producto_marca" do
    get producto_marca_url(@producto_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_marca_url(@producto_marca)
    assert_response :success
  end

  test "should update producto_marca" do
    patch producto_marca_url(@producto_marca), params: { producto_marca: { activo: @producto_marca.activo, marca: @producto_marca.marca } }
    assert_redirected_to producto_marca_url(@producto_marca)
  end

  test "should destroy producto_marca" do
    assert_difference('Producto::Marca.count', -1) do
      delete producto_marca_url(@producto_marca)
    end

    assert_redirected_to producto_marcas_url
  end
end
