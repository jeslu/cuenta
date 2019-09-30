require 'test_helper'

class Os::OrdenServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_orden_servicio = os_orden_servicios(:one)
  end

  test "should get index" do
    get os_orden_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_os_orden_servicio_url
    assert_response :success
  end

  test "should create os_orden_servicio" do
    assert_difference('Os::OrdenServicio.count') do
      post os_orden_servicios_url, params: { os_orden_servicio: { cliente_id: @os_orden_servicio.cliente_id, equipo_id: @os_orden_servicio.equipo_id, servicio_id: @os_orden_servicio.servicio_id, user_id: @os_orden_servicio.user_id } }
    end

    assert_redirected_to os_orden_servicio_url(Os::OrdenServicio.last)
  end

  test "should show os_orden_servicio" do
    get os_orden_servicio_url(@os_orden_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_orden_servicio_url(@os_orden_servicio)
    assert_response :success
  end

  test "should update os_orden_servicio" do
    patch os_orden_servicio_url(@os_orden_servicio), params: { os_orden_servicio: { cliente_id: @os_orden_servicio.cliente_id, equipo_id: @os_orden_servicio.equipo_id, servicio_id: @os_orden_servicio.servicio_id, user_id: @os_orden_servicio.user_id } }
    assert_redirected_to os_orden_servicio_url(@os_orden_servicio)
  end

  test "should destroy os_orden_servicio" do
    assert_difference('Os::OrdenServicio.count', -1) do
      delete os_orden_servicio_url(@os_orden_servicio)
    end

    assert_redirected_to os_orden_servicios_url
  end
end
