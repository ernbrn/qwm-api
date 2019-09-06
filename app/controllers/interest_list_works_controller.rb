class InterestListWorksController < ApplicationController
  load_and_authorize_resource

  # GET /interest_list_works
  def index
    render json: @interest_list_works
  end

  # GET /interest_list_works/1
  def show
    render json: @interest_list_work
  end

  # POST /interest_list_works
  def create
    if @interest_list_work.save
      render json: @interest_list_work, status: :created, location: @interest_list_work
    else
      render json: @interest_list_work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interest_list_works/1
  def update
    if @interest_list_work.update(interest_list_work_params)
      render json: @interest_list_work
    else
      render json: @interest_list_work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interest_list_works/1
  def destroy
    @interest_list_work.destroy
  end

  private

  def interest_list_work_params
    params.require(:interest_list_work).permit(:interest_list_id, :work_id)
  end
end
