class Ct::ClientesController < ApplicationController
  before_action :set_ct_cliente, only: [:show, :edit, :update, :destroy]

  # GET /ct/clientes
  # GET /ct/clientes.json
  def index
    @ct_clientes = Ct::Cliente.all
      @ct_cliente = Ct::Cliente.new
  end

  # GET /ct/clientes/1
  # GET /ct/clientes/1.json
  def show
  end

  # GET /ct/clientes/new
  def new
    @ct_cliente = Ct::Cliente.new
  end

  # GET /ct/clientes/1/edit
  def edit
  end

  # POST /ct/clientes
  # POST /ct/clientes.json
  def create
    @ct_cliente = Ct::Cliente.new(ct_cliente_params)

    respond_to do |format|
      if @ct_cliente.save
        format.html { redirect_to @ct_cliente, notice: 'Cliente fue Creado exitosamente.' }
        format.json { render :show, status: :created, location: @ct_cliente }
      else
        format.html { render :new }
        format.json { render json: @ct_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/clientes/1
  # PATCH/PUT /ct/clientes/1.json
  def update
    respond_to do |format|
      if @ct_cliente.update(ct_cliente_params)
        format.html { redirect_to @ct_cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_cliente }
      else
        format.html { render :edit }
        format.json { render json: @ct_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/clientes/1
  # DELETE /ct/clientes/1.json
  def destroy
    @ct_cliente.destroy
    respond_to do |format|
      format.html { redirect_to ct_clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_cliente
      @ct_cliente = Ct::Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_cliente_params
      params.require(:ct_cliente).permit(:nombre, :telefono, :direccion)
    end
end
