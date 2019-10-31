require 'test_helper'

class Os::EquiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_equipo = os_equipos(:one)
  end

  test "should get index" do
    get os_equipos_url
    assert_response :success
  end

  test "should get new" do
    get new_os_equipo_url
    assert_response :success
  end

  test "should create os_equipo" do
    assert_difference('Os::Equipo.count') do
      post os_equipos_url, params: { os_equipo: { marca_id: @os_equipo.marca_id, modelo_id: @os_equipo.modelo_id, n_serie: @os_equipo.n_serie, orden_servicio_id: @os_equipo.orden_servicio_id, tipo_equipo_id: @os_equipo.tipo_equipo_id } }
    end

    assert_redirected_to os_equipo_url(Os::Equipo.last)
  end

  test "should show os_equipo" do
    get os_equipo_url(@os_equipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_equipo_url(@os_equipo)
    assert_response :success
  end

  test "should update os_equipo" do
    patch os_equipo_url(@os_equipo), params: { os_equipo: { marca_id: @os_equipo.marca_id, modelo_id: @os_equipo.modelo_id, n_serie: @os_equipo.n_serie, orden_servicio_id: @os_equipo.orden_servicio_id, tipo_equipo_id: @os_equipo.tipo_equipo_id } }
    assert_redirected_to os_equipo_url(@os_equipo)
  end

  test "should destroy os_equipo" do
    assert_difference('Os::Equipo.count', -1) do
      delete os_equipo_url(@os_equipo)
    end

    assert_redirected_to os_equipos_url
  end
end
