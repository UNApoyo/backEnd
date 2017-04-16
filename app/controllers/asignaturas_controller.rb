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
  def porcentajeArea
    @porcentaje_area = Asignatura.porcentaje_estudiante_area(params[:estudiante_id] ,params[:area_id], params[:carrera_id])
    if @porcentaje_area.empty?
      render json:
        { data:
            {
                error: "No area percent"
              }
        }
    else
      render json: @porcentaje_area
    end
  end
  def porcentajeTipologia
    @porcentaje_tipologia = Asignatura.porcentaje_estudiante_tipologia(params[:estudiante_id] ,params[:tipologia], params[:carrera_id])
    if @porcentaje_tipologia.empty?
      render json:
        { data:
            {
                error: "No type percent"
              }
        }
    else
      render json: @porcentaje_tipologia
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura
      @asignatura = Asignatura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def asignatura_params
      params.require(:asignatura).permit(:nombre, :creditos, :tipologia, :codigo, :area_id)
    end


end
