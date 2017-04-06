class AreaInvestigacionsController < ApplicationController
  before_action :set_area_investigacion, only: [:show, :update, :destroy]

  # GET /area_investigacions
  def index
    @area_investigacions = AreaInvestigacion.all

    render json: @area_investigacions
  end

  # GET /area_investigacions/1
  def show
    render json: @area_investigacion
  end

  # POST /area_investigacions
  def create
    @area_investigacion = AreaInvestigacion.new(area_investigacion_params)

    if @area_investigacion.save
      render json: @area_investigacion, status: :created, location: @area_investigacion
    else
      render json: @area_investigacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /area_investigacions/1
  def update
    if @area_investigacion.update(area_investigacion_params)
      render json: @area_investigacion
    else
      render json: @area_investigacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /area_investigacions/1
  def destroy
    @area_investigacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_investigacion
      @area_investigacion = AreaInvestigacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def area_investigacion_params
      params.require(:area_investigacion).permit(:area_id, :grupo_investigacion_id)
    end
end
