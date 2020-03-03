class Producto::CatalogosController < ApplicationController
  before_action :set_producto_catalogo, only: [:show, :edit, :update, :destroy]

  # GET /producto/catalogos
  # GET /producto/catalogos.json
  def index
    @producto_catalogos = Producto::Catalogo.all
  end

  # GET /producto/catalogos/1
  # GET /producto/catalogos/1.json
  def show
  end

  # GET /producto/catalogos/new
  def new
    @producto_catalogo = Producto::Catalogo.new
  end

  # GET /producto/catalogos/1/edit
  def edit
  end

  # POST /producto/catalogos
  # POST /producto/catalogos.json
  def create
    @producto_catalogo = current_user.ProductoCatalogos.new(producto_catalogo_params)

    respond_to do |format|
      if @producto_catalogo.save
        format.html { redirect_to @producto_catalogo, notice: 'Catalogo was successfully created.' }
        format.json { render :show, status: :created, location: @producto_catalogo }
      else
        format.html { render :new }
        format.json { render json: @producto_catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto/catalogos/1
  # PATCH/PUT /producto/catalogos/1.json
  def update
    respond_to do |format|
      if @producto_catalogo.update(producto_catalogo_params)
        format.html { redirect_to @producto_catalogo, notice: 'Catalogo was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_catalogo }
      else
        format.html { render :edit }
        format.json { render json: @producto_catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto/catalogos/1
  # DELETE /producto/catalogos/1.json
  def destroy
    @producto_catalogo.destroy
    respond_to do |format|
      format.html { redirect_to producto_catalogos_url, notice: 'Catalogo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_catalogo
      @producto_catalogo = Producto::Catalogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_catalogo_params
      params.require(:producto_catalogo).permit(:categoria_id, :umedida_id, :marca_id, :barcode, :descripcion, :nombre, :costo, :user_id)
    end
end
