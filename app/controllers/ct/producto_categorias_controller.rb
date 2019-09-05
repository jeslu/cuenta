class Ct::ProductoCategoriasController < ApplicationController
  before_action :set_ct_producto_categoria, only: [:show, :edit, :update, :destroy]

  # GET /ct/producto_categorias
  # GET /ct/producto_categorias.json
  def index
    @ct_producto_categorias = Ct::ProductoCategoria.all
  end

  # GET /ct/producto_categorias/1
  # GET /ct/producto_categorias/1.json
  def show
  end

  # GET /ct/producto_categorias/new
  def new
    @ct_producto_categoria = Ct::ProductoCategoria.new
  end

  # GET /ct/producto_categorias/1/edit
  def edit
  end

  # POST /ct/producto_categorias
  # POST /ct/producto_categorias.json
  def create
    @ct_producto_categoria = Ct::ProductoCategoria.new(ct_producto_categoria_params)

    respond_to do |format|
      if @ct_producto_categoria.save
        format.html { redirect_to @ct_producto_categoria, notice: 'Producto categoria was successfully created.' }
        format.json { render :show, status: :created, location: @ct_producto_categoria }
      else
        format.html { render :new }
        format.json { render json: @ct_producto_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/producto_categorias/1
  # PATCH/PUT /ct/producto_categorias/1.json
  def update
    respond_to do |format|
      if @ct_producto_categoria.update(ct_producto_categoria_params)
        format.html { redirect_to @ct_producto_categoria, notice: 'Producto categoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_producto_categoria }
      else
        format.html { render :edit }
        format.json { render json: @ct_producto_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/producto_categorias/1
  # DELETE /ct/producto_categorias/1.json
  def destroy
    @ct_producto_categoria.destroy
    respond_to do |format|
      format.html { redirect_to ct_producto_categorias_url, notice: 'Producto categoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_producto_categoria
      @ct_producto_categoria = Ct::ProductoCategoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_producto_categoria_params
      params.require(:ct_producto_categoria).permit(:categoria, :activo)
    end
end
