class EnfoquesController < ApplicationController
  before_action :set_enfoque, only: [:show, :update, :destroy]

  # GET /enfoques
  def index
    @enfoques = Enfoque.all

    render json: @enfoques
  end

  # GET /enfoques/1
  def show
    render json: @enfoque
  end

  # POST /enfoques
  def create
    @enfoque = Enfoque.new(enfoque_params)

    if @enfoque.save
      render json: @enfoque, status: :created, location: @enfoque
    else
      render json: @enfoque.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enfoques/1
  def update
    if @enfoque.update(enfoque_params)
      render json: @enfoque
    else
      render json: @enfoque.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enfoques/1
  def destroy
    @enfoque.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enfoque
      @enfoque = Enfoque.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enfoque_params
      params.require(:enfoque).permit(:nombre)
    end
end
