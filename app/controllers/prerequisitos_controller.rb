class PrerequisitosController < ApplicationController
  before_action :set_prerequisito, only: [:show, :update, :destroy]

  # GET /prerequisitos
  def index
    @prerequisitos = Prerequisito.all

    render json: @prerequisitos
  end

  # GET /prerequisitos/1
  def show
    render json: @prerequisito
  end

  # POST /prerequisitos
  def create
    @prerequisito = Prerequisito.new(prerequisito_params)

    if @prerequisito.save
      render json: @prerequisito, status: :created, location: @prerequisito
    else
      render json: @prerequisito.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prerequisitos/1
  def update
    if @prerequisito.update(prerequisito_params)
      render json: @prerequisito
    else
      render json: @prerequisito.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prerequisitos/1
  def destroy
    @prerequisito.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prerequisito
      @prerequisito = Prerequisito.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prerequisito_params
      params.require(:prerequisito).permit(:requisito, :requisito_de)
    end
end
