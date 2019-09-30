require 'test_helper'

class Os::TipoEquiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @os_tipo_equipo = os_tipo_equipos(:one)
  end

  test "should get index" do
    get os_tipo_equipos_url
    assert_response :success
  end

  test "should get new" do
    get new_os_tipo_equipo_url
    assert_response :success
  end

  test "should create os_tipo_equipo" do
    assert_difference('Os::TipoEquipo.count') do
      post os_tipo_equipos_url, params: { os_tipo_equipo: { activo: @os_tipo_equipo.activo, tipo: @os_tipo_equipo.tipo } }
    end

    assert_redirected_to os_tipo_equipo_url(Os::TipoEquipo.last)
  end

  test "should show os_tipo_equipo" do
    get os_tipo_equipo_url(@os_tipo_equipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_os_tipo_equipo_url(@os_tipo_equipo)
    assert_response :success
  end

  test "should update os_tipo_equipo" do
    patch os_tipo_equipo_url(@os_tipo_equipo), params: { os_tipo_equipo: { activo: @os_tipo_equipo.activo, tipo: @os_tipo_equipo.tipo } }
    assert_redirected_to os_tipo_equipo_url(@os_tipo_equipo)
  end

  test "should destroy os_tipo_equipo" do
    assert_difference('Os::TipoEquipo.count', -1) do
      delete os_tipo_equipo_url(@os_tipo_equipo)
    end

    assert_redirected_to os_tipo_equipos_url
  end
end
