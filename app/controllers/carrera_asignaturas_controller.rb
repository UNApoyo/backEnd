class CarreraAsignaturasController < ApplicationController
  before_action :set_carrera_asignatura, only: [:show, :update, :destroy]

  # GET /carrera_asignaturas
  def index
    @carrera_asignaturas = CarreraAsignatura.all

    render json: @carrera_asignaturas
  end

  # GET /carrera_asignaturas/1
  def show
    render json: @carrera_asignatura
  end

  # POST /carrera_asignaturas
  def create
    @carrera_asignatura = CarreraAsignatura.new(carrera_asignatura_params)

    if @carrera_asignatura.save
      render json: @carrera_asignatura, status: :created, location: @carrera_asignatura
    else
      render json: @carrera_asignatura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carrera_asignaturas/1
  def update
    if @carrera_asignatura.update(carrera_asignatura_params)
      render json: @carrera_asignatura
    else
      render json: @carrera_asignatura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carrera_asignaturas/1
  def destroy
    @carrera_asignatura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera_asignatura
      @carrera_asignatura = CarreraAsignatura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def carrera_asignatura_params
      params.require(:carrera_asignatura).permit(:carrera_id, :asignatura_id)
    end
end
