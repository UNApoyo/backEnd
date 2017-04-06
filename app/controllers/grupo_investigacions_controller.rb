class GrupoInvestigacionsController < ApplicationController
  before_action :set_grupo_investigacion, only: [:show, :update, :destroy]

  # GET /grupo_investigacions
  def index
    @grupo_investigacions = GrupoInvestigacion.all

    render json: @grupo_investigacions
  end

  # GET /grupo_investigacions/1
  def show
    render json: @grupo_investigacion
  end

  # POST /grupo_investigacions
  def create
    @grupo_investigacion = GrupoInvestigacion.new(grupo_investigacion_params)

    if @grupo_investigacion.save
      render json: @grupo_investigacion, status: :created, location: @grupo_investigacion
    else
      render json: @grupo_investigacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grupo_investigacions/1
  def update
    if @grupo_investigacion.update(grupo_investigacion_params)
      render json: @grupo_investigacion
    else
      render json: @grupo_investigacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grupo_investigacions/1
  def destroy
    @grupo_investigacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_investigacion
      @grupo_investigacion = GrupoInvestigacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grupo_investigacion_params
      params.require(:grupo_investigacion).permit(:nombre)
    end
end
