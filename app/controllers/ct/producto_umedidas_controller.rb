class Ct::ProductoUmedidasController < ApplicationController
  before_action :set_ct_producto_umedida, only: [:show, :edit, :update, :destroy]

  # GET /ct/producto_umedidas
  # GET /ct/producto_umedidas.json
  def index
    @ct_producto_umedidas = Ct::ProductoUmedida.all
  end

  # GET /ct/producto_umedidas/1
  # GET /ct/producto_umedidas/1.json
  def show
  end

  # GET /ct/producto_umedidas/new
  def new
    @ct_producto_umedida = Ct::ProductoUmedida.new
  end

  # GET /ct/producto_umedidas/1/edit
  def edit
  end

  # POST /ct/producto_umedidas
  # POST /ct/producto_umedidas.json
  def create
    @ct_producto_umedida = Ct::ProductoUmedida.new(ct_producto_umedida_params)

    respond_to do |format|
      if @ct_producto_umedida.save
        format.html { redirect_to @ct_producto_umedida, notice: 'Producto umedida was successfully created.' }
        format.json { render :show, status: :created, location: @ct_producto_umedida }
      else
        format.html { render :new }
        format.json { render json: @ct_producto_umedida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/producto_umedidas/1
  # PATCH/PUT /ct/producto_umedidas/1.json
  def update
    respond_to do |format|
      if @ct_producto_umedida.update(ct_producto_umedida_params)
        format.html { redirect_to @ct_producto_umedida, notice: 'Producto umedida was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_producto_umedida }
      else
        format.html { render :edit }
        format.json { render json: @ct_producto_umedida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/producto_umedidas/1
  # DELETE /ct/producto_umedidas/1.json
  def destroy
    @ct_producto_umedida.destroy
    respond_to do |format|
      format.html { redirect_to ct_producto_umedidas_url, notice: 'Producto umedida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_producto_umedida
      @ct_producto_umedida = Ct::ProductoUmedida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_producto_umedida_params
      params.require(:ct_producto_umedida).permit(:medida, :activo)
    end
end
