class EnfoquesController < ApplicationController
  before_action :set_enfoque, only: [:show, :edit, :update, :destroy]

  # GET /enfoques
  # GET /enfoques.json
  def index
    @enfoques = Enfoque.all
  end

  # GET /enfoques/1
  # GET /enfoques/1.json
  def show
  end

  # GET /enfoques/new
  def new
    @enfoque = Enfoque.new
  end

  # GET /enfoques/1/edit
  def edit
  end

  # POST /enfoques
  # POST /enfoques.json
  def create
    @enfoque = Enfoque.new(enfoque_params)

    respond_to do |format|
      if @enfoque.save
        format.html { redirect_to @enfoque, notice: 'Enfoque was successfully created.' }
        format.json { render :show, status: :created, location: @enfoque }
      else
        format.html { render :new }
        format.json { render json: @enfoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enfoques/1
  # PATCH/PUT /enfoques/1.json
  def update
    respond_to do |format|
      if @enfoque.update(enfoque_params)
        format.html { redirect_to @enfoque, notice: 'Enfoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @enfoque }
      else
        format.html { render :edit }
        format.json { render json: @enfoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfoques/1
  # DELETE /enfoques/1.json
  def destroy
    @enfoque.destroy
    respond_to do |format|
      format.html { redirect_to enfoques_url, notice: 'Enfoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfoque
      @enfoque = Enfoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enfoque_params
      params.require(:enfoque).permit(:nombre, :carrera_id)
    end
end
