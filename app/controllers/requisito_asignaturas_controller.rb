class RequisitoAsignaturasController < ApplicationController
  before_action :set_requisito_asignatura, only: [:show, :update, :destroy]

  # GET /requisito_asignaturas
  def index
    @requisito_asignaturas = RequisitoAsignatura.all

    render json: @requisito_asignaturas
  end

  # GET /requisito_asignaturas/1
  def show
    render json: @requisito_asignatura
  end

  # POST /requisito_asignaturas
  def create
    @requisito_asignatura = RequisitoAsignatura.new(requisito_asignatura_params)

    if @requisito_asignatura.save
      render json: @requisito_asignatura, status: :created, location: @requisito_asignatura
    else
      render json: @requisito_asignatura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requisito_asignaturas/1
  def update
    if @requisito_asignatura.update(requisito_asignatura_params)
      render json: @requisito_asignatura
    else
      render json: @requisito_asignatura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requisito_asignaturas/1
  def destroy
    @requisito_asignatura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisito_asignatura
      @requisito_asignatura = RequisitoAsignatura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def requisito_asignatura_params
      params.require(:requisito_asignatura).permit(:prerequisito_id, :asignatura_id)
    end
end
