class EnfoqueAsignaturasController < ApplicationController
  before_action :set_enfoque_asignatura, only: [:show, :update, :destroy]

  # GET /enfoque_asignaturas
  def index
    @enfoque_asignaturas = EnfoqueAsignatura.all

    render json: @enfoque_asignaturas
  end

  # GET /enfoque_asignaturas/1
  def show
    render json: @enfoque_asignatura
  end

  # POST /enfoque_asignaturas
  def create
    @enfoque_asignatura = EnfoqueAsignatura.new(enfoque_asignatura_params)

    if @enfoque_asignatura.save
      render json: @enfoque_asignatura, status: :created, location: @enfoque_asignatura
    else
      render json: @enfoque_asignatura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enfoque_asignaturas/1
  def update
    if @enfoque_asignatura.update(enfoque_asignatura_params)
      render json: @enfoque_asignatura
    else
      render json: @enfoque_asignatura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enfoque_asignaturas/1
  def destroy
    @enfoque_asignatura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfoque_asignatura
      @enfoque_asignatura = EnfoqueAsignatura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enfoque_asignatura_params
      params.require(:enfoque_asignatura).permit(:enfoque_id, :asignatura_id)
    end
end
