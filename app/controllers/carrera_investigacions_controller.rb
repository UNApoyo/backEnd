class CarreraInvestigacionsController < ApplicationController
  before_action :set_carrera_investigacion, only: [:show, :edit, :update, :destroy]

  # GET /carrera_investigacions
  # GET /carrera_investigacions.json
  def index
    @carrera_investigacions = CarreraInvestigacion.all
  end

  # GET /carrera_investigacions/1
  # GET /carrera_investigacions/1.json
  def show
  end

  # GET /carrera_investigacions/new
  def new
    @carrera_investigacion = CarreraInvestigacion.new
  end

  # GET /carrera_investigacions/1/edit
  def edit
  end

  # POST /carrera_investigacions
  # POST /carrera_investigacions.json
  def create
    @carrera_investigacion = CarreraInvestigacion.new(carrera_investigacion_params)

    respond_to do |format|
      if @carrera_investigacion.save
        format.html { redirect_to @carrera_investigacion, notice: 'Carrera investigacion was successfully created.' }
        format.json { render :show, status: :created, location: @carrera_investigacion }
      else
        format.html { render :new }
        format.json { render json: @carrera_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrera_investigacions/1
  # PATCH/PUT /carrera_investigacions/1.json
  def update
    respond_to do |format|
      if @carrera_investigacion.update(carrera_investigacion_params)
        format.html { redirect_to @carrera_investigacion, notice: 'Carrera investigacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrera_investigacion }
      else
        format.html { render :edit }
        format.json { render json: @carrera_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrera_investigacions/1
  # DELETE /carrera_investigacions/1.json
  def destroy
    @carrera_investigacion.destroy
    respond_to do |format|
      format.html { redirect_to carrera_investigacions_url, notice: 'Carrera investigacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera_investigacion
      @carrera_investigacion = CarreraInvestigacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrera_investigacion_params
      params.require(:carrera_investigacion).permit(:carrera_id, :grupo_investigacion_id)
    end
end
