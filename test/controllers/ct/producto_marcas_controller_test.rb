require 'test_helper'

class Ct::ProductoMarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_producto_marca = ct_producto_marcas(:one)
  end

  test "should get index" do
    get ct_producto_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_producto_marca_url
    assert_response :success
  end

  test "should create ct_producto_marca" do
    assert_difference('Ct::ProductoMarca.count') do
      post ct_producto_marcas_url, params: { ct_producto_marca: { activo: @ct_producto_marca.activo, marca: @ct_producto_marca.marca } }
    end

    assert_redirected_to ct_producto_marca_url(Ct::ProductoMarca.last)
  end

  test "should show ct_producto_marca" do
    get ct_producto_marca_url(@ct_producto_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_producto_marca_url(@ct_producto_marca)
    assert_response :success
  end

  test "should update ct_producto_marca" do
    patch ct_producto_marca_url(@ct_producto_marca), params: { ct_producto_marca: { activo: @ct_producto_marca.activo, marca: @ct_producto_marca.marca } }
    assert_redirected_to ct_producto_marca_url(@ct_producto_marca)
  end

  test "should destroy ct_producto_marca" do
    assert_difference('Ct::ProductoMarca.count', -1) do
      delete ct_producto_marca_url(@ct_producto_marca)
    end

    assert_redirected_to ct_producto_marcas_url
  end
end
