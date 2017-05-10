class AreasController < ApplicationController
  before_action :set_area, only: [:show, :update, :destroy]

  # GET /areas
  def index
    @areas = Area.all

    render json: @areas
  end

  # GET /areas/1
  def show
    render json: @area
  end

  # POST /areas
  def create
    @area = Area.new(area_params)

    if @area.save
      render json: @area, status: :created, location: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /areas/1
  def update
    if @area.update(area_params)
      render json: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # DELETE /areas/1
  def destroy
    @area.destroy
  end

  def porcentajes
    @porcentajes = Area.all_porcentaje_area(params[:estudiante_id],params[:carrera_id],params[:sort])
    arr  = @porcentajes
    if @porcentajes == -1
      render json:
        { data:
            {
                error: "No estas viendo materias de esta area"
              }
        }
    else
      render json:@porcentajes 
    end
  end

  def get_areas
    @areas = Area.get_areas(params[:column])
    render json: @areas
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def area_params
      params.require(:area).permit(:nombre)
    end
end
