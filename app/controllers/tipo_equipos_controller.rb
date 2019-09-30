class TipoEquiposController < ApplicationController
  before_action :set_tipo_equipo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_equipos
  # GET /tipo_equipos.json
  def index
    @tipo_equipos = TipoEquipo.all
  end

  # GET /tipo_equipos/1
  # GET /tipo_equipos/1.json
  def show
  end

  # GET /tipo_equipos/new
  def new
    @tipo_equipo = TipoEquipo.new
  end

  # GET /tipo_equipos/1/edit
  def edit
  end

  # POST /tipo_equipos
  # POST /tipo_equipos.json
  def create
    @tipo_equipo = TipoEquipo.new(tipo_equipo_params)

    respond_to do |format|
      if @tipo_equipo.save
        format.html { redirect_to @tipo_equipo, notice: 'Tipo equipo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_equipo }
      else
        format.html { render :new }
        format.json { render json: @tipo_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_equipos/1
  # PATCH/PUT /tipo_equipos/1.json
  def update
    respond_to do |format|
      if @tipo_equipo.update(tipo_equipo_params)
        format.html { redirect_to @tipo_equipo, notice: 'Tipo equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_equipo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_equipos/1
  # DELETE /tipo_equipos/1.json
  def destroy
    @tipo_equipo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_equipos_url, notice: 'Tipo equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_equipo
      @tipo_equipo = TipoEquipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_equipo_params
      params.require(:tipo_equipo).permit(:tipo, :activo)
    end
end
