require 'test_helper'

class Ct::CuentaCotizacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_cuenta_cotizacion = ct_cuenta_cotizacions(:one)
  end

  test "should get index" do
    get ct_cuenta_cotizacions_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_cuenta_cotizacion_url
    assert_response :success
  end

  test "should create ct_cuenta_cotizacion" do
    assert_difference('Ct::CuentaCotizacion.count') do
      post ct_cuenta_cotizacions_url, params: { ct_cuenta_cotizacion: { activo: @ct_cuenta_cotizacion.activo, cantidad: @ct_cuenta_cotizacion.cantidad, cuenta_cliente_id: @ct_cuenta_cotizacion.cuenta_cliente_id, fecha: @ct_cuenta_cotizacion.fecha, producto_id: @ct_cuenta_cotizacion.producto_id, total: @ct_cuenta_cotizacion.total } }
    end

    assert_redirected_to ct_cuenta_cotizacion_url(Ct::CuentaCotizacion.last)
  end

  test "should show ct_cuenta_cotizacion" do
    get ct_cuenta_cotizacion_url(@ct_cuenta_cotizacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_cuenta_cotizacion_url(@ct_cuenta_cotizacion)
    assert_response :success
  end

  test "should update ct_cuenta_cotizacion" do
    patch ct_cuenta_cotizacion_url(@ct_cuenta_cotizacion), params: { ct_cuenta_cotizacion: { activo: @ct_cuenta_cotizacion.activo, cantidad: @ct_cuenta_cotizacion.cantidad, cuenta_cliente_id: @ct_cuenta_cotizacion.cuenta_cliente_id, fecha: @ct_cuenta_cotizacion.fecha, producto_id: @ct_cuenta_cotizacion.producto_id, total: @ct_cuenta_cotizacion.total } }
    assert_redirected_to ct_cuenta_cotizacion_url(@ct_cuenta_cotizacion)
  end

  test "should destroy ct_cuenta_cotizacion" do
    assert_difference('Ct::CuentaCotizacion.count', -1) do
      delete ct_cuenta_cotizacion_url(@ct_cuenta_cotizacion)
    end

    assert_redirected_to ct_cuenta_cotizacions_url
  end
end
