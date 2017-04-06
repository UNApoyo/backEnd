class AsignaturasController < ApplicationController
  before_action :set_asignatura, only: [:show, :update, :destroy]

  # GET /asignaturas
  def index
    @asignaturas = Asignatura.all

    render json: @asignaturas
  end

  # GET /asignaturas/1
  def show
    render json: @asignatura
  end

  # POST /asignaturas
  def create
    @asignatura = Asignatura.new(asignatura_params)

    if @asignatura.save
      render json: @asignatura, status: :created, location: @asignatura
    else
      render json: @asignatura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /asignaturas/1
  def update
    if @asignatura.update(asignatura_params)
      render json: @asignatura
    else
      render json: @asignatura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /asignaturas/1
  def destroy
    @asignatura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura
      @asignatura = Asignatura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def asignatura_params
      params.require(:asignatura).permit(:nombre, :creditos, :tipologia, :codigo, :prerequisito_id)
    end
end
