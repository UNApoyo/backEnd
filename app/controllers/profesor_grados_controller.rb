class ProfesorGradosController < ApplicationController
  before_action :set_profesor_grado, only: [:show, :update, :destroy]

  # GET /profesor_grados
  def index
    @profesor_grados = ProfesorGrado.all

    render json: @profesor_grados
  end

  # GET /profesor_grados/1
  def show
    render json: @profesor_grado
  end

  # POST /profesor_grados
  def create
    @profesor_grado = ProfesorGrado.new(profesor_grado_params)

    if @profesor_grado.save
      render json: @profesor_grado, status: :created, location: @profesor_grado
    else
      render json: @profesor_grado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesor_grados/1
  def update
    if @profesor_grado.update(profesor_grado_params)
      render json: @profesor_grado
    else
      render json: @profesor_grado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesor_grados/1
  def destroy
    @profesor_grado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_grado
      @profesor_grado = ProfesorGrado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profesor_grado_params
      params.require(:profesor_grado).permit(:profesor_id, :trabajo_grado_id)
    end
end
