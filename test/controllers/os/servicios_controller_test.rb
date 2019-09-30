require 'test_helper'

class Os::ServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_servicio = os_servicios(:one)
  end

  test "should get index" do
    get os_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_os_servicio_url
    assert_response :success
  end

  test "should create os_servicio" do
    assert_difference('Os::Servicio.count') do
      post os_servicios_url, params: { os_servicio: { costo: @os_servicio.costo, descripcion: @os_servicio.descripcion, servicio: @os_servicio.servicio } }
    end

    assert_redirected_to os_servicio_url(Os::Servicio.last)
  end

  test "should show os_servicio" do
    get os_servicio_url(@os_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_servicio_url(@os_servicio)
    assert_response :success
  end

  test "should update os_servicio" do
    patch os_servicio_url(@os_servicio), params: { os_servicio: { costo: @os_servicio.costo, descripcion: @os_servicio.descripcion, servicio: @os_servicio.servicio } }
    assert_redirected_to os_servicio_url(@os_servicio)
  end

  test "should destroy os_servicio" do
    assert_difference('Os::Servicio.count', -1) do
      delete os_servicio_url(@os_servicio)
    end

    assert_redirected_to os_servicios_url
  end
end
