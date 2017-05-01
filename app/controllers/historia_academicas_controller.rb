class HistoriaAcademicasController < ApplicationController
  before_action :set_historia_academica, only: [:show, :update, :destroy]

  # GET /historia_academicas
  def index
    @historia_academicas = HistoriaAcademica.all

    render json: @historia_academicas
  end

  # GET /historia_academicas/1
  def show
    render json: @historia_academica
  end

  # POST /historia_academicas
  def create
    @historia_academica = HistoriaAcademica.new(historia_academica_params)

    if @historia_academica.save
      render json: @historia_academica, status: :created, location: @historia_academica
    else
      render json: @historia_academica.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /historia_academicas/1
  def update
    if @historia_academica.update(historia_academica_params)
      render json: @historia_academica
    else
      render json: @historia_academica.errors, status: :unprocessable_entity
    end
  end

  # DELETE /historia_academicas/1
  def destroy
    @historia_academica.destroy
  end

  def promedioArea
    @pro_area = HistoriaAcademica.promedio_area(params[:area])
    if @pro_area < 0
      render json:
        { data:
            {
                error: "No average"
              }
        }
    else
      render json: @pro_area
    end
  end

  def promedioTipologia
    @pro_tipologia = HistoriaAcademica.promedio_tipologia(params[:tipologia])
    if @pro_tipologia < 0
      render json:
        { data:
            {
                error: "No average"
              }
        }
    else
      render json: @pro_tipologia
    end
  end

  def bestCalificacion
    @best = HistoriaAcademica.best_calificacion
    if @best < 0
      render json:
      {
        data:
        {
          error: "No grade"
        }
      }
    else
      render json: @best
    end
  end

  def worstCalificacion
    @worst = HistoriaAcademica.worst_calificacion
    if @worst < 0
      render json:
      {
        data:
        {
          error: "No grade"
        }
      }
    else
      render json: @worst
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_academica
      @historia_academica = HistoriaAcademica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def historia_academica_params
      params.require(:historia_academica).permit(:calificacion, :asignatura_id, :estudiante_id)
    end
end
