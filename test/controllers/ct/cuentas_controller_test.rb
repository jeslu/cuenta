require 'test_helper'

class Ct::CuentasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_cuenta = ct_cuentas(:one)
  end

  test "should get index" do
    get ct_cuentas_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_cuenta_url
    assert_response :success
  end

  test "should create ct_cuenta" do
    assert_difference('Ct::Cuenta.count') do
      post ct_cuentas_url, params: { ct_cuenta: { activo: @ct_cuenta.activo, cliente_id: @ct_cuenta.cliente_id, fecha: @ct_cuenta.fecha } }
    end

    assert_redirected_to ct_cuenta_url(Ct::Cuenta.last)
  end

  test "should show ct_cuenta" do
    get ct_cuenta_url(@ct_cuenta)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_cuenta_url(@ct_cuenta)
    assert_response :success
  end

  test "should update ct_cuenta" do
    patch ct_cuenta_url(@ct_cuenta), params: { ct_cuenta: { activo: @ct_cuenta.activo, cliente_id: @ct_cuenta.cliente_id, fecha: @ct_cuenta.fecha } }
    assert_redirected_to ct_cuenta_url(@ct_cuenta)
  end

  test "should destroy ct_cuenta" do
    assert_difference('Ct::Cuenta.count', -1) do
      delete ct_cuenta_url(@ct_cuenta)
    end

    assert_redirected_to ct_cuentas_url
  end
end
