class CollectionsController < ApplicationController
  load_and_authorize_resource

  # GET /collections
  def index
    render json: @collections
  end

  # GET /collections/1
  def show
    render json: @collection
  end

  # POST /collections
  def create
    if @collection.save
      render json: @collection, status: :created, location: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collections/1
  def update
    if @collection.update(collection_params)
      render json: @collection
    else
      render json: @collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collections/1
  def destroy
    @collection.destroy
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :user_id)
  end
end
