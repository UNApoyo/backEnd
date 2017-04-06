class CarreraInvestigacionsController < ApplicationController
  before_action :set_carrera_investigacion, only: [:show, :update, :destroy]

  # GET /carrera_investigacions
  def index
    @carrera_investigacions = CarreraInvestigacion.all

    render json: @carrera_investigacions
  end

  # GET /carrera_investigacions/1
  def show
    render json: @carrera_investigacion
  end

  # POST /carrera_investigacions
  def create
    @carrera_investigacion = CarreraInvestigacion.new(carrera_investigacion_params)

    if @carrera_investigacion.save
      render json: @carrera_investigacion, status: :created, location: @carrera_investigacion
    else
      render json: @carrera_investigacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carrera_investigacions/1
  def update
    if @carrera_investigacion.update(carrera_investigacion_params)
      render json: @carrera_investigacion
    else
      render json: @carrera_investigacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carrera_investigacions/1
  def destroy
    @carrera_investigacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera_investigacion
      @carrera_investigacion = CarreraInvestigacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def carrera_investigacion_params
      params.require(:carrera_investigacion).permit(:carrera_id, :grupo_investigacion_id)
    end
end
