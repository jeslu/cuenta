class Producto::ModelosController < ApplicationController
  before_action :set_producto_modelo, only: [:show, :edit, :update, :destroy]

  # GET /producto/modelos
  # GET /producto/modelos.json
  def index
    @producto_modelos = Producto::Modelo.all
  end

  # GET /producto/modelos/1
  # GET /producto/modelos/1.json
  def show
  end

  # GET /producto/modelos/new
  def new
    @producto_modelo = Producto::Modelo.new
  end

  # GET /producto/modelos/1/edit
  def edit
  end

  # POST /producto/modelos
  # POST /producto/modelos.json
  def create
    @producto_modelo = Producto::Modelo.new(producto_modelo_params)

    respond_to do |format|
      if @producto_modelo.save
        format.html { redirect_to @producto_modelo, notice: 'Modelo was successfully created.' }
        format.json { render :show, status: :created, location: @producto_modelo }
      else
        format.html { render :new }
        format.json { render json: @producto_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto/modelos/1
  # PATCH/PUT /producto/modelos/1.json
  def update
    respond_to do |format|
      if @producto_modelo.update(producto_modelo_params)
        format.html { redirect_to @producto_modelo, notice: 'Modelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_modelo }
      else
        format.html { render :edit }
        format.json { render json: @producto_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto/modelos/1
  # DELETE /producto/modelos/1.json
  def destroy
    @producto_modelo.destroy
    respond_to do |format|
      format.html { redirect_to producto_modelos_url, notice: 'Modelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_modelo
      @producto_modelo = Producto::Modelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_modelo_params
      params.require(:producto_modelo).permit(:modelo, :activo)
    end
end
