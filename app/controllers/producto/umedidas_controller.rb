class Producto::UmedidasController < ApplicationController
  before_action :set_producto_umedida, only: [:show, :edit, :update, :destroy]

  # GET /producto/umedidas
  # GET /producto/umedidas.json
  def index
    @producto_umedidas = Producto::Umedida.all
  end

  # GET /producto/umedidas/1
  # GET /producto/umedidas/1.json
  def show
  end

  # GET /producto/umedidas/new
  def new
    @producto_umedida = Producto::Umedida.new
  end

  # GET /producto/umedidas/1/edit
  def edit
  end

  # POST /producto/umedidas
  # POST /producto/umedidas.json
  def create
    @producto_umedida = Producto::Umedida.new(producto_umedida_params)

    respond_to do |format|
      if @producto_umedida.save
        format.html { redirect_to @producto_umedida, notice: 'Umedida was successfully created.' }
        format.json { render :show, status: :created, location: @producto_umedida }
      else
        format.html { render :new }
        format.json { render json: @producto_umedida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto/umedidas/1
  # PATCH/PUT /producto/umedidas/1.json
  def update
    respond_to do |format|
      if @producto_umedida.update(producto_umedida_params)
        format.html { redirect_to @producto_umedida, notice: 'Umedida was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_umedida }
      else
        format.html { render :edit }
        format.json { render json: @producto_umedida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto/umedidas/1
  # DELETE /producto/umedidas/1.json
  def destroy
    @producto_umedida.destroy
    respond_to do |format|
      format.html { redirect_to producto_umedidas_url, notice: 'Umedida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_umedida
      @producto_umedida = Producto::Umedida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_umedida_params
      params.require(:producto_umedida).permit(:medida, :activo)
    end
end
