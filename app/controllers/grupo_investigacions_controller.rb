class GrupoInvestigacionsController < ApplicationController
  before_action :set_grupo_investigacion, only: [:show, :edit, :update, :destroy]

  # GET /grupo_investigacions
  # GET /grupo_investigacions.json
  def index
    @grupo_investigacions = GrupoInvestigacion.all
  end

  # GET /grupo_investigacions/1
  # GET /grupo_investigacions/1.json
  def show
  end

  # GET /grupo_investigacions/new
  def new
    @grupo_investigacion = GrupoInvestigacion.new
  end

  # GET /grupo_investigacions/1/edit
  def edit
  end

  # POST /grupo_investigacions
  # POST /grupo_investigacions.json
  def create
    @grupo_investigacion = GrupoInvestigacion.new(grupo_investigacion_params)

    respond_to do |format|
      if @grupo_investigacion.save
        format.html { redirect_to @grupo_investigacion, notice: 'Grupo investigacion was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_investigacion }
      else
        format.html { render :new }
        format.json { render json: @grupo_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_investigacions/1
  # PATCH/PUT /grupo_investigacions/1.json
  def update
    respond_to do |format|
      if @grupo_investigacion.update(grupo_investigacion_params)
        format.html { redirect_to @grupo_investigacion, notice: 'Grupo investigacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_investigacion }
      else
        format.html { render :edit }
        format.json { render json: @grupo_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_investigacions/1
  # DELETE /grupo_investigacions/1.json
  def destroy
    @grupo_investigacion.destroy
    respond_to do |format|
      format.html { redirect_to grupo_investigacions_url, notice: 'Grupo investigacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_investigacion
      @grupo_investigacion = GrupoInvestigacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_investigacion_params
      params.require(:grupo_investigacion).permit(:nombre)
    end
end
