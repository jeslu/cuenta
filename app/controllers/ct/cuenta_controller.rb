class Ct::CuentaController < ApplicationController
  before_action :set_ct_cuentum, only: [:show, :edit, :update, :destroy]

  # GET /ct/cuenta
  # GET /ct/cuenta.json
  def index
    @ct_cuenta = Ct::Cuentum.all
  end

  # GET /ct/cuenta/1
  # GET /ct/cuenta/1.json
  def show
  end

  # GET /ct/cuenta/new
  def new
    @ct_cuentum = Ct::Cuentum.new
  end

  # GET /ct/cuenta/1/edit
  def edit
  end

  # POST /ct/cuenta
  # POST /ct/cuenta.json
  def create
    @ct_cuentum = Ct::Cuentum.new(ct_cuentum_params)

    respond_to do |format|
      if @ct_cuentum.save
        format.html { redirect_to @ct_cuentum, notice: 'Cuentum was successfully created.' }
        format.json { render :show, status: :created, location: @ct_cuentum }
      else
        format.html { render :new }
        format.json { render json: @ct_cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ct/cuenta/1
  # PATCH/PUT /ct/cuenta/1.json
  def update
    respond_to do |format|
      if @ct_cuentum.update(ct_cuentum_params)
        format.html { redirect_to @ct_cuentum, notice: 'Cuentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct_cuentum }
      else
        format.html { render :edit }
        format.json { render json: @ct_cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ct/cuenta/1
  # DELETE /ct/cuenta/1.json
  def destroy
    @ct_cuentum.destroy
    respond_to do |format|
      format.html { redirect_to ct_cuenta_url, notice: 'Cuentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct_cuentum
      @ct_cuentum = Ct::Cuentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_cuentum_params
      params.require(:ct_cuentum).permit(:cliente_id, :fecha, :activo)
    end
end
