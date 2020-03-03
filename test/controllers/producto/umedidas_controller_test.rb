require 'test_helper'

class Producto::UmedidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_umedida = producto_umedidas(:one)
  end

  test "should get index" do
    get producto_umedidas_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_umedida_url
    assert_response :success
  end

  test "should create producto_umedida" do
    assert_difference('Producto::Umedida.count') do
      post producto_umedidas_url, params: { producto_umedida: { activo: @producto_umedida.activo, medida: @producto_umedida.medida } }
    end

    assert_redirected_to producto_umedida_url(Producto::Umedida.last)
  end

  test "should show producto_umedida" do
    get producto_umedida_url(@producto_umedida)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_umedida_url(@producto_umedida)
    assert_response :success
  end

  test "should update producto_umedida" do
    patch producto_umedida_url(@producto_umedida), params: { producto_umedida: { activo: @producto_umedida.activo, medida: @producto_umedida.medida } }
    assert_redirected_to producto_umedida_url(@producto_umedida)
  end

  test "should destroy producto_umedida" do
    assert_difference('Producto::Umedida.count', -1) do
      delete producto_umedida_url(@producto_umedida)
    end

    assert_redirected_to producto_umedidas_url
  end
end
