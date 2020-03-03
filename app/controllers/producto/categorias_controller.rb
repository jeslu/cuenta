class Producto::CategoriasController < ApplicationController
  before_action :set_producto_categoria, only: [:show, :edit, :update, :destroy]

  # GET /producto/categorias
  # GET /producto/categorias.json
  def index
    @producto_categorias = Producto::Categoria.all
  end

  # GET /producto/categorias/1
  # GET /producto/categorias/1.json
  def show
  end

  # GET /producto/categorias/new
  def new
    @producto_categoria = Producto::Categoria.new
  end

  # GET /producto/categorias/1/edit
  def edit
  end

  # POST /producto/categorias
  # POST /producto/categorias.json
  def create
    @producto_categoria = Producto::Categoria.new(producto_categoria_params)

    respond_to do |format|
      if @producto_categoria.save
        format.html { redirect_to @producto_categoria, notice: 'Categoria was successfully created.' }
        format.json { render :show, status: :created, location: @producto_categoria }
      else
        format.html { render :new }
        format.json { render json: @producto_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto/categorias/1
  # PATCH/PUT /producto/categorias/1.json
  def update
    respond_to do |format|
      if @producto_categoria.update(producto_categoria_params)
        format.html { redirect_to @producto_categoria, notice: 'Categoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_categoria }
      else
        format.html { render :edit }
        format.json { render json: @producto_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto/categorias/1
  # DELETE /producto/categorias/1.json
  def destroy
    @producto_categoria.destroy
    respond_to do |format|
      format.html { redirect_to producto_categorias_url, notice: 'Categoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_categoria
      @producto_categoria = Producto::Categoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_categoria_params
      params.require(:producto_categoria).permit(:categoria, :activo)
    end
end
