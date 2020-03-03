class Os::ServicioOrdensController < ApplicationController
  before_action :set_orden_servicio, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_os_servicio_orden, only: [:show, :edit, :update, :destroy]

  # GET /os/servicio_ordens
  # GET /os/servicio_ordens.json
  def index
    @os_servicio_ordens = Os::ServicioOrden.all

  end

  # GET /os/servicio_ordens/1
  # GET /os/servicio_ordens/1.json
  def show
  end

  # GET /os/servicio_ordens/new
  def new
    @os_servicio_orden = Os::ServicioOrden.new
    @url_form = "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}/servicio_ordens/"
  end

  # GET /os/servicio_ordens/1/edit
  def edit
  end

  # POST /os/servicio_ordens
  # POST /os/servicio_ordens.json
  def create
    #@os_servicio_orden = Os::ServicioOrden.new(os_servicio_orden_params)

    respond_to do |format|
      if @orden_servicio.ServicioOrdens << Os::ServicioOrden.new(os_servicio_orden_params)
        format.html { redirect_to "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}", notice: 'Servicio orden was successfully created.' }
        format.json { render :show, status: :created, location: @os_servicio_orden }
      else
        format.html { redirect_to "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}",notice: 'el servicio no pudo crearse'}
        format.json { render json: @os_servicio_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os/servicio_ordens/1
  # PATCH/PUT /os/servicio_ordens/1.json
  def update
    respond_to do |format|
      if @os_servicio_orden.update(os_servicio_orden_params)
        format.html { redirect_to @os_servicio_orden, notice: 'Servicio orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_servicio_orden }
      else
        format.html { render :edit }
        format.json { render json: @os_servicio_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/servicio_ordens/1
  # DELETE /os/servicio_ordens/1.json
  def destroy
    @os_servicio_orden.destroy
    respond_to do |format|
      format.html { redirect_to "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}", notice: 'Equipo fue eliminado exitosamente.' }
      format.json { head :no_content }
      format.json { head :no_content }
    end
  end

  private
 # optener la id de orden_servicios
  def set_orden_servicio
    @orden_servicio = Os::OrdenServicio.find(params[:orden_servicio_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_os_servicio_orden
      @os_servicio_orden = Os::ServicioOrden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_servicio_orden_params
      params.require(:os_servicio_orden).permit(:orden_servicio_id, :servicio_id)
    end
end
