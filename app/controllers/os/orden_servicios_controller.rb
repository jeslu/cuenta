class Os::OrdenServiciosController < ApplicationController
  before_action :set_os_orden_servicio, only: [:show, :edit, :update, :destroy]

  # GET /os/orden_servicios
  # GET /os/orden_servicios.json
  def index
    @os_orden_servicios = Os::OrdenServicio.all
    @os_orden_servicio = Os::OrdenServicio.new
  end

  # GET /os/orden_servicios/1
  # GET /os/orden_servicios/1.json
  def show
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
        format.html { redirect_to @os_orden_servicio, notice: 'Orden servicio was successfully created.' }
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
        format.html { redirect_to @os_orden_servicio, notice: 'Orden servicio was successfully updated.' }
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
      format.html { redirect_to os_orden_servicios_url, notice: 'Orden servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_orden_servicio
      @os_orden_servicio = Os::OrdenServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_orden_servicio_params
      params.require(:os_orden_servicio).permit(:user_id, :cliente_id, :servicio_id, :equipo_id)
    end
end
