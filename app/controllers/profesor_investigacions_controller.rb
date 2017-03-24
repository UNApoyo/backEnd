class ProfesorInvestigacionsController < ApplicationController
  before_action :set_profesor_investigacion, only: [:show, :edit, :update, :destroy]

  # GET /profesor_investigacions
  # GET /profesor_investigacions.json
  def index
    @profesor_investigacions = ProfesorInvestigacion.all
  end

  # GET /profesor_investigacions/1
  # GET /profesor_investigacions/1.json
  def show
  end

  # GET /profesor_investigacions/new
  def new
    @profesor_investigacion = ProfesorInvestigacion.new
  end

  # GET /profesor_investigacions/1/edit
  def edit
  end

  # POST /profesor_investigacions
  # POST /profesor_investigacions.json
  def create
    @profesor_investigacion = ProfesorInvestigacion.new(profesor_investigacion_params)

    respond_to do |format|
      if @profesor_investigacion.save
        format.html { redirect_to @profesor_investigacion, notice: 'Profesor investigacion was successfully created.' }
        format.json { render :show, status: :created, location: @profesor_investigacion }
      else
        format.html { render :new }
        format.json { render json: @profesor_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesor_investigacions/1
  # PATCH/PUT /profesor_investigacions/1.json
  def update
    respond_to do |format|
      if @profesor_investigacion.update(profesor_investigacion_params)
        format.html { redirect_to @profesor_investigacion, notice: 'Profesor investigacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesor_investigacion }
      else
        format.html { render :edit }
        format.json { render json: @profesor_investigacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesor_investigacions/1
  # DELETE /profesor_investigacions/1.json
  def destroy
    @profesor_investigacion.destroy
    respond_to do |format|
      format.html { redirect_to profesor_investigacions_url, notice: 'Profesor investigacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_investigacion
      @profesor_investigacion = ProfesorInvestigacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesor_investigacion_params
      params.require(:profesor_investigacion).permit(:profesor_id, :grupo_investigacion_id)
    end
end
