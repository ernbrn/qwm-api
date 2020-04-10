class CreatorTypesController < ApplicationController
  before_action :set_creator_type, only: [:show, :update, :destroy]

  # GET /creator_types
  def index
    @creator_types = CreatorType.all

    render json: @creator_types
  end

  # GET /creator_types/1
  def show
    render json: @creator_type
  end

  # POST /creator_types
  def create
    @creator_type = CreatorType.new(creator_type_params)

    if @creator_type.save
      render json: @creator_type, status: :created, location: @creator_type
    else
      render json: @creator_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /creator_types/1
  def update
    if @creator_type.update(creator_type_params)
      render json: @creator_type
    else
      render json: @creator_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /creator_types/1
  def destroy
    @creator_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creator_type
      @creator_type = CreatorType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creator_type_params
      params.require(:creator_type).permit(:name, :work_type_id)
    end
end
