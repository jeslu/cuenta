class Ct::CuentasController < ApplicationController
  before_action :set_ct_cuenta, only: [:show, :edit, :update, :destroy]

  # GET /ct/cuentas
  # GET /ct/cuentas.json
  def index
    @ct_cuentas = Ct::Cuenta.all
    @ct_cuenta = Ct::Cuenta.new
  end

  # GET /ct/cuentas/1
  # GET /ct/cuentas/1.json
  def show
  end

  # GET /ct/cuentas/new
  def new
    @ct_cuenta = Ct::Cuenta.new
  end

  # GET /ct/cuentas/1/edit
  def edit
  end

  # POST /ct/cuentas
  # POST /ct/cuentas.json
  def create
    @ct_cuenta = Ct::Cuenta.new(ct_cuenta_params)

    respond_to do |format|
      if @ct_cuenta.save
        format.html { redirect_to @ct_cuenta, notice: 'Cuenta was successfully created.' }
        format.json { render :show, status: :created, location: @ct_cuenta }
      else
        format.html { render :new }
        format.json { render json: @ct_cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/cuentas/1
  # PATCH/PUT /ct/cuentas/1.json
  def update
    respond_to do |format|
      if @ct_cuenta.update(ct_cuenta_params)
        format.html { redirect_to @ct_cuenta, notice: 'Cuenta was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_cuenta }
      else
        format.html { render :edit }
        format.json { render json: @ct_cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/cuentas/1
  # DELETE /ct/cuentas/1.json
  def destroy
    @ct_cuenta.destroy
    respond_to do |format|
      format.html { redirect_to ct_cuentas_url, notice: 'Cuenta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_cuenta
      @ct_cuenta = Ct::Cuenta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_cuenta_params
      params.require(:ct_cuenta).permit(:cliente_id, :fecha, :activo)
    end
end
