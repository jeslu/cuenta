require 'test_helper'

class Os::ServicioOrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_servicio_orden = os_servicio_ordens(:one)
  end

  test "should get index" do
    get os_servicio_ordens_url
    assert_response :success
  end

  test "should get new" do
    get new_os_servicio_orden_url
    assert_response :success
  end

  test "should create os_servicio_orden" do
    assert_difference('Os::ServicioOrden.count') do
      post os_servicio_ordens_url, params: { os_servicio_orden: { orden_servicio_id: @os_servicio_orden.orden_servicio_id, servicio_id: @os_servicio_orden.servicio_id } }
    end

    assert_redirected_to os_servicio_orden_url(Os::ServicioOrden.last)
  end

  test "should show os_servicio_orden" do
    get os_servicio_orden_url(@os_servicio_orden)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_servicio_orden_url(@os_servicio_orden)
    assert_response :success
  end

  test "should update os_servicio_orden" do
    patch os_servicio_orden_url(@os_servicio_orden), params: { os_servicio_orden: { orden_servicio_id: @os_servicio_orden.orden_servicio_id, servicio_id: @os_servicio_orden.servicio_id } }
    assert_redirected_to os_servicio_orden_url(@os_servicio_orden)
  end

  test "should destroy os_servicio_orden" do
    assert_difference('Os::ServicioOrden.count', -1) do
      delete os_servicio_orden_url(@os_servicio_orden)
    end

    assert_redirected_to os_servicio_ordens_url
  end
end
