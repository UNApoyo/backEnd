class ProfesorsController < ApplicationController
  before_action :set_profesor, only: [:show, :update, :destroy]

  # GET /profesors
  def index
    @profesors = Profesor.all

    render json: @profesors
  end

  # GET /profesors/1
  def show
    render json: @profesor
  end

  # POST /profesors
  def create
    @profesor = Profesor.new(profesor_params)

    if @profesor.save
      render json: @profesor, status: :created, location: @profesor
    else
      render json: @profesor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesors/1
  def update
    if @profesor.update(profesor_params)
      render json: @profesor
    else
      render json: @profesor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesors/1
  def destroy
    @profesor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor
      @profesor = Profesor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profesor_params
      params.require(:profesor).permit(:nombre, :info)
    end
end
