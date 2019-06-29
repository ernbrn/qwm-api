class RatingsController < ApplicationController
  load_and_authorize_resource

  # GET /users/:user_id/ratings
  def index
    render json: @ratings
  end

  # GET /ratings/1
  def show
    render json: @rating
  end

  # POST /users/:user_id/ratings
  def create
    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ratings/1
  def update
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  def destroy
    @rating.destroy
  end

  private

  def rating_params
    params.require(:rating).permit(:like, :severity)
  end
end
