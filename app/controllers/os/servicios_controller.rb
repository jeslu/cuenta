class Os::ServiciosController < ApplicationController
  before_action :set_os_servicio, only: [:show, :edit, :update, :destroy]

  # GET /os/servicios
  # GET /os/servicios.json
  def index
    @os_servicios = Os::Servicio.all
  end

  # GET /os/servicios/1
  # GET /os/servicios/1.json
  def show
  end

  # GET /os/servicios/new
  def new
    @os_servicio = Os::Servicio.new
  end

  # GET /os/servicios/1/edit
  def edit
  end

  # POST /os/servicios
  # POST /os/servicios.json
  def create
    @os_servicio = Os::Servicio.new(os_servicio_params)

    respond_to do |format|
      if @os_servicio.save
        format.html { redirect_to @os_servicio, notice: 'Servicio was successfully created.' }
        format.json { render :show, status: :created, location: @os_servicio }
      else
        format.html { render :new }
        format.json { render json: @os_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os/servicios/1
  # PATCH/PUT /os/servicios/1.json
  def update
    respond_to do |format|
      if @os_servicio.update(os_servicio_params)
        format.html { redirect_to @os_servicio, notice: 'Servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_servicio }
      else
        format.html { render :edit }
        format.json { render json: @os_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/servicios/1
  # DELETE /os/servicios/1.json
  def destroy
    @os_servicio.destroy
    respond_to do |format|
      format.html { redirect_to os_servicios_url, notice: 'Servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_servicio
      @os_servicio = Os::Servicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_servicio_params
      params.require(:os_servicio).permit(:servicio, :costo, :descripcion)
    end
end
