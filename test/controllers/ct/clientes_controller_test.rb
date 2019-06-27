require 'test_helper'

class Ct::ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_cliente = ct_clientes(:one)
  end

  test "should get index" do
    get ct_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_cliente_url
    assert_response :success
  end

  test "should create ct_cliente" do
    assert_difference('Ct::Cliente.count') do
      post ct_clientes_url, params: { ct_cliente: { direccion: @ct_cliente.direccion, nombre: @ct_cliente.nombre, telefono: @ct_cliente.telefono } }
    end

    assert_redirected_to ct_cliente_url(Ct::Cliente.last)
  end

  test "should show ct_cliente" do
    get ct_cliente_url(@ct_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_cliente_url(@ct_cliente)
    assert_response :success
  end

  test "should update ct_cliente" do
    patch ct_cliente_url(@ct_cliente), params: { ct_cliente: { direccion: @ct_cliente.direccion, nombre: @ct_cliente.nombre, telefono: @ct_cliente.telefono } }
    assert_redirected_to ct_cliente_url(@ct_cliente)
  end

  test "should destroy ct_cliente" do
    assert_difference('Ct::Cliente.count', -1) do
      delete ct_cliente_url(@ct_cliente)
    end

    assert_redirected_to ct_clientes_url
  end
end
