class ProfesorGradosController < ApplicationController
  before_action :set_profesor_grado, only: [:show, :edit, :update, :destroy]

  # GET /profesor_grados
  # GET /profesor_grados.json
  def index
    @profesor_grados = ProfesorGrado.all
  end

  # GET /profesor_grados/1
  # GET /profesor_grados/1.json
  def show
  end

  # GET /profesor_grados/new
  def new
    @profesor_grado = ProfesorGrado.new
  end

  # GET /profesor_grados/1/edit
  def edit
  end

  # POST /profesor_grados
  # POST /profesor_grados.json
  def create
    @profesor_grado = ProfesorGrado.new(profesor_grado_params)

    respond_to do |format|
      if @profesor_grado.save
        format.html { redirect_to @profesor_grado, notice: 'Profesor grado was successfully created.' }
        format.json { render :show, status: :created, location: @profesor_grado }
      else
        format.html { render :new }
        format.json { render json: @profesor_grado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesor_grados/1
  # PATCH/PUT /profesor_grados/1.json
  def update
    respond_to do |format|
      if @profesor_grado.update(profesor_grado_params)
        format.html { redirect_to @profesor_grado, notice: 'Profesor grado was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesor_grado }
      else
        format.html { render :edit }
        format.json { render json: @profesor_grado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesor_grados/1
  # DELETE /profesor_grados/1.json
  def destroy
    @profesor_grado.destroy
    respond_to do |format|
      format.html { redirect_to profesor_grados_url, notice: 'Profesor grado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_grado
      @profesor_grado = ProfesorGrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesor_grado_params
      params.require(:profesor_grado).permit(:profesor_id, :trabajo_grado_id)
    end
end
