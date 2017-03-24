class CarreraMateriaController < ApplicationController
  before_action :set_carrera_materium, only: [:show, :edit, :update, :destroy]

  # GET /carrera_materia
  # GET /carrera_materia.json
  def index
    @carrera_materia = CarreraMaterium.all
  end

  # GET /carrera_materia/1
  # GET /carrera_materia/1.json
  def show
  end

  # GET /carrera_materia/new
  def new
    @carrera_materium = CarreraMaterium.new
  end

  # GET /carrera_materia/1/edit
  def edit
  end

  # POST /carrera_materia
  # POST /carrera_materia.json
  def create
    @carrera_materium = CarreraMaterium.new(carrera_materium_params)

    respond_to do |format|
      if @carrera_materium.save
        format.html { redirect_to @carrera_materium, notice: 'Carrera materium was successfully created.' }
        format.json { render :show, status: :created, location: @carrera_materium }
      else
        format.html { render :new }
        format.json { render json: @carrera_materium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrera_materia/1
  # PATCH/PUT /carrera_materia/1.json
  def update
    respond_to do |format|
      if @carrera_materium.update(carrera_materium_params)
        format.html { redirect_to @carrera_materium, notice: 'Carrera materium was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrera_materium }
      else
        format.html { render :edit }
        format.json { render json: @carrera_materium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrera_materia/1
  # DELETE /carrera_materia/1.json
  def destroy
    @carrera_materium.destroy
    respond_to do |format|
      format.html { redirect_to carrera_materia_url, notice: 'Carrera materium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrera_materium
      @carrera_materium = CarreraMaterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrera_materium_params
      params.require(:carrera_materium).permit(:carrera_id, :materia_id)
    end
end
