class HistoriaAcademicasController < ApplicationController
  before_action :set_historia_academica, only: [:show, :edit, :update, :destroy]

  # GET /historia_academicas
  # GET /historia_academicas.json
  def index
    @historia_academicas = HistoriaAcademica.all
  end

  # GET /historia_academicas/1
  # GET /historia_academicas/1.json
  def show
  end

  # GET /historia_academicas/new
  def new
    @historia_academica = HistoriaAcademica.new
  end

  # GET /historia_academicas/1/edit
  def edit
  end

  # POST /historia_academicas
  # POST /historia_academicas.json
  def create
    @historia_academica = HistoriaAcademica.new(historia_academica_params)

    respond_to do |format|
      if @historia_academica.save
        format.html { redirect_to @historia_academica, notice: 'Historia academica was successfully created.' }
        format.json { render :show, status: :created, location: @historia_academica }
      else
        format.html { render :new }
        format.json { render json: @historia_academica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_academicas/1
  # PATCH/PUT /historia_academicas/1.json
  def update
    respond_to do |format|
      if @historia_academica.update(historia_academica_params)
        format.html { redirect_to @historia_academica, notice: 'Historia academica was successfully updated.' }
        format.json { render :show, status: :ok, location: @historia_academica }
      else
        format.html { render :edit }
        format.json { render json: @historia_academica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_academicas/1
  # DELETE /historia_academicas/1.json
  def destroy
    @historia_academica.destroy
    respond_to do |format|
      format.html { redirect_to historia_academicas_url, notice: 'Historia academica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_academica
      @historia_academica = HistoriaAcademica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historia_academica_params
      params.require(:historia_academica).permit(:calificacion, :materia_id, :estudiante_id)
    end
end
