require 'test_helper'

class Al::EmpledosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @al_empledo = al_empledos(:one)
  end

  test "should get index" do
    get al_empledos_url
    assert_response :success
  end

  test "should get new" do
    get new_al_empledo_url
    assert_response :success
  end

  test "should create al_empledo" do
    assert_difference('Al::Empledo.count') do
      post al_empledos_url, params: { al_empledo: { apellido_m: @al_empledo.apellido_m, apellido_p: @al_empledo.apellido_p, direccion: @al_empledo.direccion, nombre: @al_empledo.nombre, telefono: @al_empledo.telefono } }
    end

    assert_redirected_to al_empledo_url(Al::Empledo.last)
  end

  test "should show al_empledo" do
    get al_empledo_url(@al_empledo)
    assert_response :success
  end

  test "should get edit" do
    get edit_al_empledo_url(@al_empledo)
    assert_response :success
  end

  test "should update al_empledo" do
    patch al_empledo_url(@al_empledo), params: { al_empledo: { apellido_m: @al_empledo.apellido_m, apellido_p: @al_empledo.apellido_p, direccion: @al_empledo.direccion, nombre: @al_empledo.nombre, telefono: @al_empledo.telefono } }
    assert_redirected_to al_empledo_url(@al_empledo)
  end

  test "should destroy al_empledo" do
    assert_difference('Al::Empledo.count', -1) do
      delete al_empledo_url(@al_empledo)
    end

    assert_redirected_to al_empledos_url
  end
end
