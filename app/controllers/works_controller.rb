class WorksController < ApplicationController
  load_and_authorize_resource

  # GET /works
  # GET /creators/:creator_id/works
  def index
    if params[:name]
      render json: @works.where("title LIKE ?", "%#{params[:name]}%")
    else
      render json: @works
    end
  end

  # GET /works/1
  def show
    render json: @work
  end

  # POST /works
  # POST /creators/:creator_id/works
  def create
    @work.contributor = current_user
    @work.creators << Creator.where(id: creator_ids)
    if @work.save
      render json: @work, status: :created, location: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /works/1
  def update
    @work.creators = Creator.where(id: creator_ids)
    if @work.update(work_params)
      render json: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /works/1
  def destroy
    @work.destroy
  end

  private

  def work_params
    params.require(:work).permit(:title, :publish_date, :work_type_id, :creators)
  end

  def creator_ids
    return [] if !params[:work][:creators]

    params[:work][:creators].map do |param|
      param[:id]
    end
  end
end
