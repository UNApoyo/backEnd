class MateriaController < ApplicationController
  before_action :set_materium, only: [:show, :edit, :update, :destroy]

  # GET /materia
  # GET /materia.json
  def index
    @materia = Materium.all
  end

  # GET /materia/1
  # GET /materia/1.json
  def show
  end

  # GET /materia/new
  def new
    @materium = Materium.new
  end

  # GET /materia/1/edit
  def edit
  end

  # POST /materia
  # POST /materia.json
  def create
    @materium = Materium.new(materium_params)

    respond_to do |format|
      if @materium.save
        format.html { redirect_to @materium, notice: 'Materium was successfully created.' }
        format.json { render :show, status: :created, location: @materium }
      else
        format.html { render :new }
        format.json { render json: @materium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materia/1
  # PATCH/PUT /materia/1.json
  def update
    respond_to do |format|
      if @materium.update(materium_params)
        format.html { redirect_to @materium, notice: 'Materium was successfully updated.' }
        format.json { render :show, status: :ok, location: @materium }
      else
        format.html { render :edit }
        format.json { render json: @materium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materia/1
  # DELETE /materia/1.json
  def destroy
    @materium.destroy
    respond_to do |format|
      format.html { redirect_to materia_url, notice: 'Materium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materium
      @materium = Materium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materium_params
      params.require(:materium).permit(:nombre, :creditos, :tipo)
    end
end
