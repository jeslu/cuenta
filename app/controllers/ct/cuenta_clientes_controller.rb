class Ct::CuentaClientesController < ApplicationController
  before_action :set_ct_cuenta_cliente, only: [:show, :edit, :update, :destroy]

  # GET /ct/cuenta_clientes
  # GET /ct/cuenta_clientes.json
  def index
    @ct_cuenta_clientes = Ct::CuentaCliente.all
    @ct_cuenta_cliente = Ct::CuentaCliente.new
  end

  # GET /ct/cuenta_clientes/1
  # GET /ct/cuenta_clientes/1.json
  def show

  end

  # GET /ct/cuenta_clientes/new
  def new

  end

  # GET /ct/cuenta_clientes/1/edit
  def edit
  end

  # POST /ct/cuenta_clientes
  # POST /ct/cuenta_clientes.json
  def create

    @ct_cuenta_cliente = current_user.CuentaClientes.new(ct_cuenta_cliente_params)

    respond_to do |format|
      if @ct_cuenta_cliente.save
        format.html { redirect_to @ct_cuenta_cliente, notice: 'Cotizacion fue creada con exito.' }
        format.json { render :show, status: :created, location: @ct_cuenta_cliente }
      else
        format.html { render :new }
        format.json { render json: @ct_cuenta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/cuenta_clientes/1
  # PATCH/PUT /ct/cuenta_clientes/1.json
  def update
    respond_to do |format|
      if @ct_cuenta_cliente.update(ct_cuenta_cliente_params)
        format.html { redirect_to @ct_cuenta_cliente, notice: 'Cuenta cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_cuenta_cliente }
      else
        format.html { render :edit }
        format.json { render json: @ct_cuenta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/cuenta_clientes/1
  # DELETE /ct/cuenta_clientes/1.json
  def destroy
    @ct_cuenta_cliente.destroy
    respond_to do |format|
      format.html { redirect_to ct_cuenta_clientes_url, notice: 'Cuenta cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_cuenta_cliente
      @ct_cuenta_cliente = Ct::CuentaCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_cuenta_cliente_params
      params.require(:ct_cuenta_cliente).permit(:user_id, :cliente_id,  :fecha_c, :activo)
    end
end
