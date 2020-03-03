require 'test_helper'

class Ct::CuentaClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_cuenta_cliente = ct_cuenta_clientes(:one)
  end

  test "should get index" do
    get ct_cuenta_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_cuenta_cliente_url
    assert_response :success
  end

  test "should create ct_cuenta_cliente" do
    assert_difference('Ct::CuentaCliente.count') do
      post ct_cuenta_clientes_url, params: { ct_cuenta_cliente: { activo: @ct_cuenta_cliente.activo, cliente_id: @ct_cuenta_cliente.cliente_id, fecha_c: @ct_cuenta_cliente.fecha_c } }
    end

    assert_redirected_to ct_cuenta_cliente_url(Ct::CuentaCliente.last)
  end

  test "should show ct_cuenta_cliente" do
    get ct_cuenta_cliente_url(@ct_cuenta_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_cuenta_cliente_url(@ct_cuenta_cliente)
    assert_response :success
  end

  test "should update ct_cuenta_cliente" do
    patch ct_cuenta_cliente_url(@ct_cuenta_cliente), params: { ct_cuenta_cliente: { activo: @ct_cuenta_cliente.activo, cliente_id: @ct_cuenta_cliente.cliente_id, fecha_c: @ct_cuenta_cliente.fecha_c } }
    assert_redirected_to ct_cuenta_cliente_url(@ct_cuenta_cliente)
  end

  test "should destroy ct_cuenta_cliente" do
    assert_difference('Ct::CuentaCliente.count', -1) do
      delete ct_cuenta_cliente_url(@ct_cuenta_cliente)
    end

    assert_redirected_to ct_cuenta_clientes_url
  end
end
