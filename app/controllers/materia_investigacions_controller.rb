class MateriaInvestigacionsController < ApplicationController
  before_action :set_materia_investigacion, only: [:show, :edit, :update, :destroy]

  # GET /materia_investigacions
  # GET /materia_investigacions.json
  def index
    @materia_investigacions = MateriaInvestigacion.all
  end

  # GET /materia_investigacions/1
  # GET /materia_investigacions/1.json
  def show
  end

  # GET /materia_investigacions/new
  def new
    @materia_investigacion = MateriaInvestigacion.new
  end

  # GET /materia_investigacions/1/edit
  def edit
  end

  # POST /materia_investigacions
  # POST /materia_investigacions.json
  def create
    @materia_investigacion = MateriaInvestigacion.new(materia_investigacion_params)

    respond_to do |format|
      if @materia_investigacion.save
        format.html { redirect_to @materia_investigacion, notice: 'Materia investigacion was successfully created.' }
        format.json { render :show, status: :created, location: @materia_investigacion }
      else
        format.html { render :new }
        format.json { render json: @materia_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materia_investigacions/1
  # PATCH/PUT /materia_investigacions/1.json
  def update
    respond_to do |format|
      if @materia_investigacion.update(materia_investigacion_params)
        format.html { redirect_to @materia_investigacion, notice: 'Materia investigacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @materia_investigacion }
      else
        format.html { render :edit }
        format.json { render json: @materia_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materia_investigacions/1
  # DELETE /materia_investigacions/1.json
  def destroy
    @materia_investigacion.destroy
    respond_to do |format|
      format.html { redirect_to materia_investigacions_url, notice: 'Materia investigacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia_investigacion
      @materia_investigacion = MateriaInvestigacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_investigacion_params
      params.require(:materia_investigacion).permit(:materia_id, :grupo_investigacion_id)
    end
end
