class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  before_action :set_ordenservicio, only: [:create_orden_servicio]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
    @cliente = Cliente.new
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
  #  @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to  @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end
  ####### CREATE ORDEN SERVICIO #################
  def create_orden_servicio
  #
      @os_orden_servicios = @client.OrdenServicios.new(os_orden_servicio_params)
      respond_to do |format|
        if   @os_orden_servicios.save
          format.html { redirect_to  "#{@URL_DOMAIN}/clientes/#{@client.id}/", notice: 'Orden servicio was successfully created.' }
          format.json { render :show, status: :created, location: @os_orden_servicio }
        else
          format.html { render :new }
          format.json { render json: @os_orden_servicio.errors, status: :unprocessable_entity }
        end
      end
    end


  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
      @client = @cliente
    end

    def set_ordenservicio
      @client = Cliente.find(params[:cliente_id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :apellido_p, :apellido_m, :direccion, :telefono, :activo)
    end
    def os_orden_servicio_params
      params.require(:os_orden_servicio).permit(:user_id, :cliente_id, :servicio_id, :equipo_id)
    end

end
