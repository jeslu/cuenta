class Ct::ProductoCatalogosController < ApplicationController
  before_action :set_ct_producto_catalogo, only: [:show, :edit, :update, :destroy]

  # GET /ct/producto_catalogos
  # GET /ct/producto_catalogos.json
  def index
    @ct_producto_catalogos = Ct::ProductoCatalogo.all
  end

  # GET /ct/producto_catalogos/1
  # GET /ct/producto_catalogos/1.json
  def show
  end

  # GET /ct/producto_catalogos/new
  def new
    @ct_producto_catalogo = Ct::ProductoCatalogo.new
  end

  # GET /ct/producto_catalogos/1/edit
  def edit
  end

  # POST /ct/producto_catalogos
  # POST /ct/producto_catalogos.json
  def create
 
    
    @ct_producto_catalogo = current_user.Catalogos.new(ct_producto_catalogo_params)

    respond_to do |format|
      if @ct_producto_catalogo.save
        format.html { redirect_to @ct_producto_catalogo, notice: 'Producto catalogo was successfully created.' }
        format.json { render :show, status: :created, location: @ct_producto_catalogo }
      else
        format.html { render :new }
        format.json { render json: @ct_producto_catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/producto_catalogos/1
  # PATCH/PUT /ct/producto_catalogos/1.json
  def update
    respond_to do |format|
      if @ct_producto_catalogo.update(ct_producto_catalogo_params)
        format.html { redirect_to @ct_producto_catalogo, notice: 'Producto catalogo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_producto_catalogo }
      else
        format.html { render :edit }
        format.json { render json: @ct_producto_catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/producto_catalogos/1
  # DELETE /ct/producto_catalogos/1.json
  def destroy
    @ct_producto_catalogo.destroy
    respond_to do |format|
      format.html { redirect_to ct_producto_catalogos_url, notice: 'Producto catalogo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_producto_catalogo
      @ct_producto_catalogo = Ct::ProductoCatalogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_producto_catalogo_params
      params.require(:ct_producto_catalogo).permit(:categoria_id, :umedida_id, :marca_id, :barcode, :descripcion, :json, :nombre, :user_id)
    end
end
