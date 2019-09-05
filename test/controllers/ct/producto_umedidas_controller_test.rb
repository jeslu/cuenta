require 'test_helper'

class Ct::ProductoUmedidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_producto_umedida = ct_producto_umedidas(:one)
  end

  test "should get index" do
    get ct_producto_umedidas_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_producto_umedida_url
    assert_response :success
  end

  test "should create ct_producto_umedida" do
    assert_difference('Ct::ProductoUmedida.count') do
      post ct_producto_umedidas_url, params: { ct_producto_umedida: { activo: @ct_producto_umedida.activo, medida: @ct_producto_umedida.medida } }
    end

    assert_redirected_to ct_producto_umedida_url(Ct::ProductoUmedida.last)
  end

  test "should show ct_producto_umedida" do
    get ct_producto_umedida_url(@ct_producto_umedida)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_producto_umedida_url(@ct_producto_umedida)
    assert_response :success
  end

  test "should update ct_producto_umedida" do
    patch ct_producto_umedida_url(@ct_producto_umedida), params: { ct_producto_umedida: { activo: @ct_producto_umedida.activo, medida: @ct_producto_umedida.medida } }
    assert_redirected_to ct_producto_umedida_url(@ct_producto_umedida)
  end

  test "should destroy ct_producto_umedida" do
    assert_difference('Ct::ProductoUmedida.count', -1) do
      delete ct_producto_umedida_url(@ct_producto_umedida)
    end

    assert_redirected_to ct_producto_umedidas_url
  end
end
