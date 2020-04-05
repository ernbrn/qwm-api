class CreatorsController < ApplicationController
  load_and_authorize_resource

  # GET /creators
  def index
    if params[:name]
      render json: @creators.where("name LIKE ?", "%#{params[:name]}%")
    else
      render json: @creators
    end
  end

  # GET /creators/1
  def show
    render json: @creator
  end

  # POST /creators
  # POST /works/:work_id/creators
  def create
    if @creator.save
      render json: @creator, status: :created, location: @creator
    else
      render json: @creator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /creators/1
  def update
    if @creator.update(creator_params)
      render json: @creator
    else
      render json: @creator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /creators/1
  def destroy
    @creator.destroy
  end

  private

  def creator_params
    params.require(:creator).permit(:name)
  end
end
