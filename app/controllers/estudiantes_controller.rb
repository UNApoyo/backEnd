class EstudiantesController < ApplicationController
  before_action :set_estudiante, only: [:show, :update, :destroy]

  # GET /estudiantes
  def index
    @estudiantes = Estudiante.all

    render json: @estudiantes
  end

  # GET /estudiantes/1
  def show
    render json: @estudiante
  end

  # POST /estudiantes
  def create
    @estudiante = Estudiante.new(estudiante_params)

    if @estudiante.save
      render json: @estudiante, status: :created, location: @estudiante
    else
      render json: @estudiante.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estudiantes/1
  def update
    if @estudiante.update(estudiante_params)
      render json: @estudiante
    else
      render json: @estudiante.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estudiantes/1
  def destroy
    @estudiante.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estudiante_params
      params.require(:estudiante).permit(:porcentaje_carrera, :creditos_disponibles, :creditos_aprobados, :creditos_inscritos, :creditos_pendientes)
    end
end
