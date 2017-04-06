class TrabajoGradosController < ApplicationController
  before_action :set_trabajo_grado, only: [:show, :update, :destroy]

  # GET /trabajo_grados
  def index
    @trabajo_grados = TrabajoGrado.all

    render json: @trabajo_grados
  end

  # GET /trabajo_grados/1
  def show
    render json: @trabajo_grado
  end

  # POST /trabajo_grados
  def create
    @trabajo_grado = TrabajoGrado.new(trabajo_grado_params)

    if @trabajo_grado.save
      render json: @trabajo_grado, status: :created, location: @trabajo_grado
    else
      render json: @trabajo_grado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trabajo_grados/1
  def update
    if @trabajo_grado.update(trabajo_grado_params)
      render json: @trabajo_grado
    else
      render json: @trabajo_grado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trabajo_grados/1
  def destroy
    @trabajo_grado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajo_grado
      @trabajo_grado = TrabajoGrado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trabajo_grado_params
      params.require(:trabajo_grado).permit(:nombre)
    end
end
