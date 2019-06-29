class WorksController < ApplicationController
  load_and_authorize_resource

  # GET /works
  # GET /creators/:creator_id/works
  def index
    render json: @works
  end

  # GET /works/1
  def show
    render json: @work
  end

  # POST /works
  # POST /creators/:creator_id/works
  def create
    @work.contributor = current_user
    if @work.save
      render json: @work, status: :created, location: @work
    else
      render json: @work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /works/1
  def update
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
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

  def work_params
    params.require(:work).permit(:title, :publish_date, :work_type_id)
  end
end
