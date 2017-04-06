class ProfesorInvestigacionsController < ApplicationController
  before_action :set_profesor_investigacion, only: [:show, :update, :destroy]

  # GET /profesor_investigacions
  def index
    @profesor_investigacions = ProfesorInvestigacion.all

    render json: @profesor_investigacions
  end

  # GET /profesor_investigacions/1
  def show
    render json: @profesor_investigacion
  end

  # POST /profesor_investigacions
  def create
    @profesor_investigacion = ProfesorInvestigacion.new(profesor_investigacion_params)

    if @profesor_investigacion.save
      render json: @profesor_investigacion, status: :created, location: @profesor_investigacion
    else
      render json: @profesor_investigacion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesor_investigacions/1
  def update
    if @profesor_investigacion.update(profesor_investigacion_params)
      render json: @profesor_investigacion
    else
      render json: @profesor_investigacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesor_investigacions/1
  def destroy
    @profesor_investigacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_investigacion
      @profesor_investigacion = ProfesorInvestigacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profesor_investigacion_params
      params.require(:profesor_investigacion).permit(:profesor_id, :investigacion_id)
    end
end
