class CollectionWorksController < ApplicationController
  load_and_authorize_resource

  # GET /collection_works
  def index
    render json: @collection_works
  end

  # GET /collection_works/1
  def show
    render json: @collection_work
  end

  # POST /collection_works
  def create
    if @collection_work.save
      render json: @collection_work, status: :created, location: @collection_work
    else
      render json: @collection_work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collection_works/1
  def update
    if @collection_work.update(collection_work_params)
      render json: @collection_work
    else
      render json: @collection_work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collection_works/1
  def destroy
    @collection_work.destroy
  end

  private

  def collection_work_params
    params.require(:collection_work).permit(:work_id, :collection_id)
  end
end
