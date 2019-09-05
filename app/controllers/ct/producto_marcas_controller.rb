class Ct::ProductoMarcasController < ApplicationController
  before_action :set_ct_producto_marca, only: [:show, :edit, :update, :destroy]

  # GET /ct/producto_marcas
  # GET /ct/producto_marcas.json
  def index
    @ct_producto_marcas = Ct::ProductoMarca.all
  end

  # GET /ct/producto_marcas/1
  # GET /ct/producto_marcas/1.json
  def show
  end

  # GET /ct/producto_marcas/new
  def new
    @ct_producto_marca = Ct::ProductoMarca.new
  end

  # GET /ct/producto_marcas/1/edit
  def edit
  end

  # POST /ct/producto_marcas
  # POST /ct/producto_marcas.json
  def create
    @ct_producto_marca = Ct::ProductoMarca.new(ct_producto_marca_params)

    respond_to do |format|
      if @ct_producto_marca.save
        format.html { redirect_to @ct_producto_marca, notice: 'Producto marca was successfully created.' }
        format.json { render :show, status: :created, location: @ct_producto_marca }
      else
        format.html { render :new }
        format.json { render json: @ct_producto_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/producto_marcas/1
  # PATCH/PUT /ct/producto_marcas/1.json
  def update
    respond_to do |format|
      if @ct_producto_marca.update(ct_producto_marca_params)
        format.html { redirect_to @ct_producto_marca, notice: 'Producto marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_producto_marca }
      else
        format.html { render :edit }
        format.json { render json: @ct_producto_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/producto_marcas/1
  # DELETE /ct/producto_marcas/1.json
  def destroy
    @ct_producto_marca.destroy
    respond_to do |format|
      format.html { redirect_to ct_producto_marcas_url, notice: 'Producto marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_producto_marca
      @ct_producto_marca = Ct::ProductoMarca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_producto_marca_params
      params.require(:ct_producto_marca).permit(:marca, :activo)
    end
end
