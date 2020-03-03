class Os::OrdenServiciosController < ApplicationController
  before_action :set_os_orden_servicio, only: [:show, :edit, :update, :destroy]
  before_action :set_orden_servicio, only: [:equipo_delete]

  # GET /os/orden_servicios
  # GET /os/orden_servicios.json
  def index
    @os_orden_servicios = Os::OrdenServicio.all
    @os_orden_servicio = Os::OrdenServicio.new

  end

  # GET /os/orden_servicios/1
  # GET /os/orden_servicios/1.json
  def show
    @orden.get_json
   #@totals = Os::OrdenServicio.total
  end

  # GET /os/orden_servicios/new
  def new
    #@os_orden_servicio = Os::OrdenServicio.new
  end

  # GET /os/orden_servicios/1/edit
  def edit
  end

  # POST /os/orden_servicios
  # POST /os/orden_servicios.json
  def create
    @os_orden_servicio = current_user.OrdenServicios.new(os_orden_servicio_params)

    respond_to do |format|
      if @os_orden_servicio.save
        format.html { redirect_to @os_orden_servicio, notice: 'Orden servicio fue creado con éxito.' }
        format.json { render :show, status: :created, location: @os_orden_servicio }
      else
        format.html { render :new }
        format.json { render json: @os_orden_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os/orden_servicios/1
  # PATCH/PUT /os/orden_servicios/1.json
  def update
    respond_to do |format|
      if @os_orden_servicio.update(os_orden_servicio_params)
        format.html { redirect_to @os_orden_servicio, notice: 'Orden servicio se actualizó con éxito.' }
        format.json { render :show, status: :ok, location: @os_orden_servicio }
      else
        format.html { render :edit }
        format.json { render json: @os_orden_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/orden_servicios/1
  # DELETE /os/orden_servicios/1.json
  def destroy
    @os_orden_servicio.destroy
    respond_to do |format|
      format.html { redirect_to os_orden_servicios_url, notice: 'Orden servicio fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end
#  def equipo_delete
#    @orden.Equipos.find(params[:equipo_id]).destroy
#    respond_to do |format|
#      format.html {redirecto "#{@URL_DOMAIN}/os/orden_servicios/#{@os_orden_servicio.id}", notice: 'jajaj fue eliminado con exito'}
#      format.json { head :no_content }
#    end

#  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_orden_servicio
       @orden = @os_orden_servicio = Os::OrdenServicio.find(params[:id])
    end

    def set_orden_servicio
      @orden = Os::OrdenServicio.find(params[:orden_servicio_id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_orden_servicio_params
      params.require(:os_orden_servicio).permit(:user_id, :cliente_id)
    end
end
