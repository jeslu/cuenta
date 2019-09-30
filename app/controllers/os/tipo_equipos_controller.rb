class Os::TipoEquiposController < ApplicationController
  before_action :set_os_tipo_equipo, only: [:show, :edit, :update, :destroy]

  # GET /os/tipo_equipos
  # GET /os/tipo_equipos.json
  def index
    @os_tipo_equipos = Os::TipoEquipo.all
  end

  # GET /os/tipo_equipos/1
  # GET /os/tipo_equipos/1.json
  def show
  end

  # GET /os/tipo_equipos/new
  def new
    @os_tipo_equipo = Os::TipoEquipo.new
  end

  # GET /os/tipo_equipos/1/edit
  def edit
  end

  # POST /os/tipo_equipos
  # POST /os/tipo_equipos.json
  def create
    @os_tipo_equipo = Os::TipoEquipo.new(os_tipo_equipo_params)

    respond_to do |format|
      if @os_tipo_equipo.save
        format.html { redirect_to @os_tipo_equipo, notice: 'Tipo equipo was successfully created.' }
        format.json { render :show, status: :created, location: @os_tipo_equipo }
      else
        format.html { render :new }
        format.json { render json: @os_tipo_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os/tipo_equipos/1
  # PATCH/PUT /os/tipo_equipos/1.json
  def update
    respond_to do |format|
      if @os_tipo_equipo.update(os_tipo_equipo_params)
        format.html { redirect_to @os_tipo_equipo, notice: 'Tipo equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_tipo_equipo }
      else
        format.html { render :edit }
        format.json { render json: @os_tipo_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/tipo_equipos/1
  # DELETE /os/tipo_equipos/1.json
  def destroy
    @os_tipo_equipo.destroy
    respond_to do |format|
      format.html { redirect_to os_tipo_equipos_url, notice: 'Tipo equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_tipo_equipo
      @os_tipo_equipo = Os::TipoEquipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_tipo_equipo_params
      params.require(:os_tipo_equipo).permit(:tipo, :activo)
    end
end
