class OrdenServiciosController < ApplicationController
  before_action :set_orden_servicio, only: [:show, :edit, :update, :destroy]

  # GET /orden_servicios
  # GET /orden_servicios.json
  def index
    @orden_servicios = OrdenServicio.all
  end

  # GET /orden_servicios/1
  # GET /orden_servicios/1.json
  def show
  end

  # GET /orden_servicios/new
  def new
    @orden_servicio = OrdenServicio.new
  end

  # GET /orden_servicios/1/edit
  def edit
  end

  # POST /orden_servicios
  # POST /orden_servicios.json
  def create
    @orden_servicio = OrdenServicio.new(orden_servicio_params)

    respond_to do |format|
      if @orden_servicio.save
        format.html { redirect_to @orden_servicio, notice: 'Orden servicio was successfully created.' }
        format.json { render :show, status: :created, location: @orden_servicio }
      else
        format.html { render :new }
        format.json { render json: @orden_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_servicios/1
  # PATCH/PUT /orden_servicios/1.json
  def update
    respond_to do |format|
      if @orden_servicio.update(orden_servicio_params)
        format.html { redirect_to @orden_servicio, notice: 'Orden servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_servicio }
      else
        format.html { render :edit }
        format.json { render json: @orden_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_servicios/1
  # DELETE /orden_servicios/1.json
  def destroy
    @orden_servicio.destroy
    respond_to do |format|
      format.html { redirect_to orden_servicios_url, notice: 'Orden servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_servicio
      @orden_servicio = OrdenServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_servicio_params
      params.require(:orden_servicio).permit(:user_id, :cliente_id, :servicio_id, :equipo_id)
    end
end
