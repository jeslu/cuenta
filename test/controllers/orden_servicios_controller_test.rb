require 'test_helper'

class OrdenServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden_servicio = orden_servicios(:one)
  end

  test "should get index" do
    get orden_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_servicio_url
    assert_response :success
  end

  test "should create orden_servicio" do
    assert_difference('OrdenServicio.count') do
      post orden_servicios_url, params: { orden_servicio: { cliente_id: @orden_servicio.cliente_id, equipo_id: @orden_servicio.equipo_id, servicio_id: @orden_servicio.servicio_id, user_id: @orden_servicio.user_id } }
    end

    assert_redirected_to orden_servicio_url(OrdenServicio.last)
  end

  test "should show orden_servicio" do
    get orden_servicio_url(@orden_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_servicio_url(@orden_servicio)
    assert_response :success
  end

  test "should update orden_servicio" do
    patch orden_servicio_url(@orden_servicio), params: { orden_servicio: { cliente_id: @orden_servicio.cliente_id, equipo_id: @orden_servicio.equipo_id, servicio_id: @orden_servicio.servicio_id, user_id: @orden_servicio.user_id } }
    assert_redirected_to orden_servicio_url(@orden_servicio)
  end

  test "should destroy orden_servicio" do
    assert_difference('OrdenServicio.count', -1) do
      delete orden_servicio_url(@orden_servicio)
    end

    assert_redirected_to orden_servicios_url
  end
end
