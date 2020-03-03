require 'test_helper'

class Producto::CatalogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_catalogo = producto_catalogos(:one)
  end

  test "should get index" do
    get producto_catalogos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_catalogo_url
    assert_response :success
  end

  test "should create producto_catalogo" do
    assert_difference('Producto::Catalogo.count') do
      post producto_catalogos_url, params: { producto_catalogo: { barcode: @producto_catalogo.barcode, categoria_id: @producto_catalogo.categoria_id, descripcion: @producto_catalogo.descripcion, marca_id: @producto_catalogo.marca_id, nombre: @producto_catalogo.nombre, umedida_id: @producto_catalogo.umedida_id, user_id: @producto_catalogo.user_id } }
    end

    assert_redirected_to producto_catalogo_url(Producto::Catalogo.last)
  end

  test "should show producto_catalogo" do
    get producto_catalogo_url(@producto_catalogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_catalogo_url(@producto_catalogo)
    assert_response :success
  end

  test "should update producto_catalogo" do
    patch producto_catalogo_url(@producto_catalogo), params: { producto_catalogo: { barcode: @producto_catalogo.barcode, categoria_id: @producto_catalogo.categoria_id, descripcion: @producto_catalogo.descripcion, marca_id: @producto_catalogo.marca_id, nombre: @producto_catalogo.nombre, umedida_id: @producto_catalogo.umedida_id, user_id: @producto_catalogo.user_id } }
    assert_redirected_to producto_catalogo_url(@producto_catalogo)
  end

  test "should destroy producto_catalogo" do
    assert_difference('Producto::Catalogo.count', -1) do
      delete producto_catalogo_url(@producto_catalogo)
    end

    assert_redirected_to producto_catalogos_url
  end
end
