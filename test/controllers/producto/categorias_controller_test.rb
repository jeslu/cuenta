require 'test_helper'

class Producto::CategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_categoria = producto_categorias(:one)
  end

  test "should get index" do
    get producto_categorias_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_categoria_url
    assert_response :success
  end

  test "should create producto_categoria" do
    assert_difference('Producto::Categoria.count') do
      post producto_categorias_url, params: { producto_categoria: { activo: @producto_categoria.activo, categoria: @producto_categoria.categoria } }
    end

    assert_redirected_to producto_categoria_url(Producto::Categoria.last)
  end

  test "should show producto_categoria" do
    get producto_categoria_url(@producto_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_categoria_url(@producto_categoria)
    assert_response :success
  end

  test "should update producto_categoria" do
    patch producto_categoria_url(@producto_categoria), params: { producto_categoria: { activo: @producto_categoria.activo, categoria: @producto_categoria.categoria } }
    assert_redirected_to producto_categoria_url(@producto_categoria)
  end

  test "should destroy producto_categoria" do
    assert_difference('Producto::Categoria.count', -1) do
      delete producto_categoria_url(@producto_categoria)
    end

    assert_redirected_to producto_categorias_url
  end
end
