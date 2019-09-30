require 'test_helper'

class Ct::CuentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_cuentum = ct_cuenta(:one)
  end

  test "should get index" do
    get ct_cuenta_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_cuentum_url
    assert_response :success
  end

  test "should create ct_cuentum" do
    assert_difference('Ct::Cuentum.count') do
      post ct_cuenta_url, params: { ct_cuentum: { activo: @ct_cuentum.activo, cliente_id: @ct_cuentum.cliente_id, fecha: @ct_cuentum.fecha } }
    end

    assert_redirected_to ct_cuentum_url(Ct::Cuentum.last)
  end

  test "should show ct_cuentum" do
    get ct_cuentum_url(@ct_cuentum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_cuentum_url(@ct_cuentum)
    assert_response :success
  end

  test "should update ct_cuentum" do
    patch ct_cuentum_url(@ct_cuentum), params: { ct_cuentum: { activo: @ct_cuentum.activo, cliente_id: @ct_cuentum.cliente_id, fecha: @ct_cuentum.fecha } }
    assert_redirected_to ct_cuentum_url(@ct_cuentum)
  end

  test "should destroy ct_cuentum" do
    assert_difference('Ct::Cuentum.count', -1) do
      delete ct_cuentum_url(@ct_cuentum)
    end

    assert_redirected_to ct_cuenta_url
  end
end
