require 'test_helper'

class Ct::ProductoCatalogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_producto_catalogo = ct_producto_catalogos(:one)
  end

  test "should get index" do
    get ct_producto_catalogos_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_producto_catalogo_url
    assert_response :success
  end

  test "should create ct_producto_catalogo" do
    assert_difference('Ct::ProductoCatalogo.count') do
      post ct_producto_catalogos_url, params: { ct_producto_catalogo: { barcode: @ct_producto_catalogo.barcode, categoria_id: @ct_producto_catalogo.categoria_id, descripcion: @ct_producto_catalogo.descripcion, json: @ct_producto_catalogo.json, marca_id: @ct_producto_catalogo.marca_id, nombre: @ct_producto_catalogo.nombre, umedida_id: @ct_producto_catalogo.umedida_id, user_id: @ct_producto_catalogo.user_id } }
    end

    assert_redirected_to ct_producto_catalogo_url(Ct::ProductoCatalogo.last)
  end

  test "should show ct_producto_catalogo" do
    get ct_producto_catalogo_url(@ct_producto_catalogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_producto_catalogo_url(@ct_producto_catalogo)
    assert_response :success
  end

  test "should update ct_producto_catalogo" do
    patch ct_producto_catalogo_url(@ct_producto_catalogo), params: { ct_producto_catalogo: { barcode: @ct_producto_catalogo.barcode, categoria_id: @ct_producto_catalogo.categoria_id, descripcion: @ct_producto_catalogo.descripcion, json: @ct_producto_catalogo.json, marca_id: @ct_producto_catalogo.marca_id, nombre: @ct_producto_catalogo.nombre, umedida_id: @ct_producto_catalogo.umedida_id, user_id: @ct_producto_catalogo.user_id } }
    assert_redirected_to ct_producto_catalogo_url(@ct_producto_catalogo)
  end

  test "should destroy ct_producto_catalogo" do
    assert_difference('Ct::ProductoCatalogo.count', -1) do
      delete ct_producto_catalogo_url(@ct_producto_catalogo)
    end

    assert_redirected_to ct_producto_catalogos_url
  end
end
