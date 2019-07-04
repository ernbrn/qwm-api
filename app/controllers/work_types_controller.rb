class WorkTypesController < ApplicationController
  load_and_authorize_resource

  # GET /work_types
  def index
    render json: @work_types
  end

  # GET /work_types/1
  def show
    render json: @work_type
  end

  # POST /work_types
  def create
    if @work_type.save
      render json: @work_type, status: :created, location: @work_type
    else
      render json: @work_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /work_types/1
  def update
    if @work_type.update(work_type_params)
      render json: @work_type
    else
      render json: @work_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /work_types/1
  def destroy
    @work_type.destroy
  end

  private

  def work_type_params
    params.require(:work_type).permit(:name)
  end
end
