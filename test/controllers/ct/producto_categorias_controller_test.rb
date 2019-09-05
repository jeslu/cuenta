require 'test_helper'

class Ct::ProductoCategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ct_producto_categoria = ct_producto_categorias(:one)
  end

  test "should get index" do
    get ct_producto_categorias_url
    assert_response :success
  end

  test "should get new" do
    get new_ct_producto_categoria_url
    assert_response :success
  end

  test "should create ct_producto_categoria" do
    assert_difference('Ct::ProductoCategoria.count') do
      post ct_producto_categorias_url, params: { ct_producto_categoria: { activo: @ct_producto_categoria.activo, categoria: @ct_producto_categoria.categoria } }
    end

    assert_redirected_to ct_producto_categoria_url(Ct::ProductoCategoria.last)
  end

  test "should show ct_producto_categoria" do
    get ct_producto_categoria_url(@ct_producto_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_ct_producto_categoria_url(@ct_producto_categoria)
    assert_response :success
  end

  test "should update ct_producto_categoria" do
    patch ct_producto_categoria_url(@ct_producto_categoria), params: { ct_producto_categoria: { activo: @ct_producto_categoria.activo, categoria: @ct_producto_categoria.categoria } }
    assert_redirected_to ct_producto_categoria_url(@ct_producto_categoria)
  end

  test "should destroy ct_producto_categoria" do
    assert_difference('Ct::ProductoCategoria.count', -1) do
      delete ct_producto_categoria_url(@ct_producto_categoria)
    end

    assert_redirected_to ct_producto_categorias_url
  end
end
