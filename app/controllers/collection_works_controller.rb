# frozen_string_literal: true

class CollectionWorksController < ApplicationController
  before_action :set_collection_work, only: [:show, :update, :destroy]

  # GET /collection_works
  def index
    @collection_works = CollectionWork.all

    render json: @collection_works
  end

  # GET /collection_works/1
  def show
    render json: @collection_work
  end

  # POST /collection_works
  def create
    @collection_work = CollectionWork.new(collection_work_params)

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

  # Use callbacks to share common setup or constraints between actions.
  def set_collection_work
    @collection_work = CollectionWork.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def collection_work_params
    params.require(:collection_work).permit(:work_id, :collection_id)
  end
end
