class ReviewsController < ApplicationController
  load_and_authorize_resource

  # GET /user/:user_id/reviews
  def index
    render json: @reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /user/:user_id/reviews
  def create
    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:public, :body, :work_id)
  end
end
