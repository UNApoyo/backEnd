class EnfoqueMateriaController < ApplicationController
  before_action :set_enfoque_materium, only: [:show, :edit, :update, :destroy]

  # GET /enfoque_materia
  # GET /enfoque_materia.json
  def index
    @enfoque_materia = EnfoqueMaterium.all
  end

  # GET /enfoque_materia/1
  # GET /enfoque_materia/1.json
  def show
  end

  # GET /enfoque_materia/new
  def new
    @enfoque_materium = EnfoqueMaterium.new
  end

  # GET /enfoque_materia/1/edit
  def edit
  end

  # POST /enfoque_materia
  # POST /enfoque_materia.json
  def create
    @enfoque_materium = EnfoqueMaterium.new(enfoque_materium_params)

    respond_to do |format|
      if @enfoque_materium.save
        format.html { redirect_to @enfoque_materium, notice: 'Enfoque materium was successfully created.' }
        format.json { render :show, status: :created, location: @enfoque_materium }
      else
        format.html { render :new }
        format.json { render json: @enfoque_materium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfoque_materia/1
  # PATCH/PUT /enfoque_materia/1.json
  def update
    respond_to do |format|
      if @enfoque_materium.update(enfoque_materium_params)
        format.html { redirect_to @enfoque_materium, notice: 'Enfoque materium was successfully updated.' }
        format.json { render :show, status: :ok, location: @enfoque_materium }
      else
        format.html { render :edit }
        format.json { render json: @enfoque_materium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfoque_materia/1
  # DELETE /enfoque_materia/1.json
  def destroy
    @enfoque_materium.destroy
    respond_to do |format|
      format.html { redirect_to enfoque_materia_url, notice: 'Enfoque materium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfoque_materium
      @enfoque_materium = EnfoqueMaterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfoque_materium_params
      params.require(:enfoque_materium).permit(:enfoque_id, :materia_id)
    end
end
