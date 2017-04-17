class CarrerasController < ApplicationController
  before_action :set_carrera, only: [:show, :update, :destroy]

  # GET /carreras
  def index
    @carreras = Carrera.all

    render json: @carreras
  end

  # GET /carreras/1
  def show
    render json: @carrera
  end

  # POST /carreras
  def create
    @carrera = Carrera.new(carrera_params)

    if @carrera.save
      render json: @carrera, status: :created, location: @carrera
    else
      render json: @carrera.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carreras/1
  def update
    if @carrera.update(carrera_params)
      render json: @carrera
    else
      render json: @carrera.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carreras/1
  def destroy
    @carrera.destroy
  end

  def sugerenciaTrabajoGrado
    @sugerTr = Carrera.sugerencia_trabajo_grado(params[:page,:per_page,:estudiante_id] )
    if @sugerTr.empty?
      render json:
        { data:
            {
                error: "No Thesis"
              }
        }
    else
      render json: @sugerTr
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera
      @carrera = Carrera.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def carrera_params
      params.require(:carrera).permit(:nombre, :creditos, :codigo)
    end
end
