class Producto::MarcasController < ApplicationController
  before_action :set_producto_marca, only: [:show, :edit, :update, :destroy]

  # GET /producto/marcas
  # GET /producto/marcas.json
  def index
    @producto_marcas = Producto::Marca.all
  end

  # GET /producto/marcas/1
  # GET /producto/marcas/1.json
  def show
  end

  # GET /producto/marcas/new
  def new
    @producto_marca = Producto::Marca.new
  end

  # GET /producto/marcas/1/edit
  def edit
  end

  # POST /producto/marcas
  # POST /producto/marcas.json
  def create
    @producto_marca = Producto::Marca.new(producto_marca_params)

    respond_to do |format|
      if @producto_marca.save
        format.html { redirect_to @producto_marca, notice: 'Marca was successfully created.' }
        format.json { render :show, status: :created, location: @producto_marca }
      else
        format.html { render :new }
        format.json { render json: @producto_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto/marcas/1
  # PATCH/PUT /producto/marcas/1.json
  def update
    respond_to do |format|
      if @producto_marca.update(producto_marca_params)
        format.html { redirect_to @producto_marca, notice: 'Marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_marca }
      else
        format.html { render :edit }
        format.json { render json: @producto_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto/marcas/1
  # DELETE /producto/marcas/1.json
  def destroy
    @producto_marca.destroy
    respond_to do |format|
      format.html { redirect_to producto_marcas_url, notice: 'Marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_marca
      @producto_marca = Producto::Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_marca_params
      params.require(:producto_marca).permit(:marca, :activo)
    end
end
