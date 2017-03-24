class TrabajoGradosController < ApplicationController
  before_action :set_trabajo_grado, only: [:show, :edit, :update, :destroy]

  # GET /trabajo_grados
  # GET /trabajo_grados.json
  def index
    @trabajo_grados = TrabajoGrado.all
  end

  # GET /trabajo_grados/1
  # GET /trabajo_grados/1.json
  def show
  end

  # GET /trabajo_grados/new
  def new
    @trabajo_grado = TrabajoGrado.new
  end

  # GET /trabajo_grados/1/edit
  def edit
  end

  # POST /trabajo_grados
  # POST /trabajo_grados.json
  def create
    @trabajo_grado = TrabajoGrado.new(trabajo_grado_params)

    respond_to do |format|
      if @trabajo_grado.save
        format.html { redirect_to @trabajo_grado, notice: 'Trabajo grado was successfully created.' }
        format.json { render :show, status: :created, location: @trabajo_grado }
      else
        format.html { render :new }
        format.json { render json: @trabajo_grado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajo_grados/1
  # PATCH/PUT /trabajo_grados/1.json
  def update
    respond_to do |format|
      if @trabajo_grado.update(trabajo_grado_params)
        format.html { redirect_to @trabajo_grado, notice: 'Trabajo grado was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabajo_grado }
      else
        format.html { render :edit }
        format.json { render json: @trabajo_grado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajo_grados/1
  # DELETE /trabajo_grados/1.json
  def destroy
    @trabajo_grado.destroy
    respond_to do |format|
      format.html { redirect_to trabajo_grados_url, notice: 'Trabajo grado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabajo_grado
      @trabajo_grado = TrabajoGrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabajo_grado_params
      params.require(:trabajo_grado).permit(:nombre, :carrera_id)
    end
end
