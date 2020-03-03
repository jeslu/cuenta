class Ct::CuentaCotizacionsController < ApplicationController
  before_action :set_ct_cuenta_cotizacion, only: [:show, :edit, :update, :destroy]
  before_action :set_cuenta_cliente, only: [:new, :create, :edit, :update, :destroy]

  # GET /ct/cuenta_cotizacions
  # GET /ct/cuenta_cotizacions.json
  def index
    @ct_cuenta_cotizacions = Ct::CuentaCotizacion.all
  end

  # GET /ct/cuenta_cotizacions/1
  # GET /ct/cuenta_cotizacions/1.json
  def show
  end

  # GET /ct/cuenta_cotizacions/new
  def new
    @ct_cuenta_cotizacion = Ct::CuentaCotizacion.new
    @url_form = "#{@URL_DOMAIN}/ct/cuenta_clientes/#{@cuenta_cliente.id}/cuenta_cotizacions/"
  end

  # GET /ct/cuenta_cotizacions/1/edit
  def edit
    @ct_cuenta_cotizacion = @cuenta_clente.CuentaCotizacions.find(params[:id])
    @url_form = "#{@URL_DOMAIN}/ct/cuenta_clientes/#{@cuenta_clente.id}/cuenta_cotizacions/#{@ct_cuenta_cotizacion.id}"
  end

  # POST /ct/cuenta_cotizacions
  # POST /ct/cuenta_cotizacions.json
  def create
    #@ct_cuenta_cotizacion = Ct::CuentaCotizacion.new(ct_cuenta_cotizacion_params)

    respond_to do |format|
        if @cuenta_clente.CuentaCotizacions <<  Ct::CuentaCotizacion.new(ct_cuenta_cotizacion_params)

        format.html { redirect_to "#{@URL_DOMAIN}/ct/cuenta_clientes/#{@cuenta_clente.id}", notice: 'Material fue agregado.' }
        format.json { render :show, status: :created, location: @ct_cuenta_cotizacion }
      else
        format.html { redirect_to "#{@URL_DOMAIN}/ct/cuenta_clentes/#{@cuenta_clente.id}", notice: 'no se creo la cotizacion' }
        format.json { render json: @ct_cuenta_cotizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/cuenta_cotizacions/1
  # PATCH/PUT /ct/cuenta_cotizacions/1.json
  def update
    respond_to do |format|
      if @ct_cuenta_cotizacion.update(ct_cuenta_cotizacion_params)
        format.html { redirect_to "#{@URL_DOMAIN}/ct/cuenta_clientes/#{@cuenta_clente.id}", notice: 'Material fue auctualizado.' }
        format.json { render :show, status: :ok, location: @ct_cuenta_cotizacion }
      else
        format.html { render :edit }
        format.json { render json: @ct_cuenta_cotizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/cuenta_cotizacions/1
  # DELETE /ct/cuenta_cotizacions/1.json
  def destroy
    @ct_cuenta_cotizacion.destroy
    respond_to do |format|
      format.html { redirect_to "#{@URL_DOMAIN}/ct/cuenta_clientes/#{@cuenta_clente.id}", notice: 'Material Fue eliminado.' }
      format.json { head :no_content }
    end
  end

  private

  def set_cuenta_cliente
      @cuenta_clente = Ct::CuentaCliente.find(params[:cuenta_cliente_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_cuenta_cotizacion
    @ct_cuenta_cotizacion = @cuenta_clente = Ct::CuentaCliente.find(params[:cuenta_cliente_id])
      @ct_cuenta_cotizacion = @cuenta_clente.CuentaCotizacions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_cuenta_cotizacion_params
      params.require(:ct_cuenta_cotizacion).permit(:activo, :cuenta_cliente_id, :producto_id, :cantidad, :precio, :total)
    end
end
