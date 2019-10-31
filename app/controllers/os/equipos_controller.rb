class Os::EquiposController < ApplicationController
  before_action :set_orden_servicio, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_os_equipo, only: [:show, :edit, :update, :destroy]

  # GET /os/equipos
  # GET /os/equipos.json
  def index
    @os_equipos = Os::Equipo.all
  end

  # GET /os/equipos/1
  # GET /os/equipos/1.json
  def show
  end

  # GET /os/equipos/new
  def new
    @equipo = Os::Equipo.new
    @url_form = "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}/equipos/"
  end

  # GET /os/equipos/1/edit
  def edit
    @equipo = @orden_servicio.Equipos.find(params[:id])
    @url_form = "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}/equipos/#{@equipo.id}"

  end

  # POST /os/equipos
  # POST /os/equipos.json
  def create

    #@os_equipo = @orden_servicio.Os::Equipo.new(os_equipo_params)

    respond_to do |format|
      if @orden_servicio.Equipos << Os::Equipo.new(os_equipo_params)
        format.html { redirect_to "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}", notice: 'Equipo was successfully created.' }
        format.json { render :show, status: :created, location: @os_equipo }
      else
        format.html { redirect_to "#{@URL_DOMAIN}/os/orden_servicios/#{@orden_servicio.id}", notice: 'no se pudo' }
        format.json { render json: @os_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os/equipos/1
  # PATCH/PUT /os/equipos/1.json
  def update
    respond_to do |format|
      if @os_equipo.update(os_equipo_params)
        format.html { redirect_to @os_equipo, notice: 'Equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_equipo }
      else
        format.html { render :edit }
        format.json { render json: @os_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/equipos/1
  # DELETE /os/equipos/1.json
  def destroy
    @os_equipo.destroy
    respond_to do |format|
      format.html { redirect_to os_equipos_url, notice: 'Equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
def set_orden_servicio
  @orden_servicio = Os::OrdenServicio.find(params[:orden_servicio_id])

end

    def set_os_equipo
      @os_equipo = @orden_servicio.Equipos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_equipo_params
      params.require(:os_equipo).permit(:n_serie, :marca_id, :modelo_id, :tipo_equipo_id, :orden_servicio_id)
    end
end
