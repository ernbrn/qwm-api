class InterestListsController < ApplicationController
  load_and_authorize_resource

  # GET /interest_lists
  def index
    render json: @interest_lists
  end

  # GET /interest_lists/1
  def show
    render json: @interest_list
  end

  # POST /interest_lists
  def create
    if @interest_list.save
      render json: @interest_list, status: :created, location: @interest_list
    else
      render json: @interest_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interest_lists/1
  def update
    if @interest_list.update(interest_list_params)
      render json: @interest_list
    else
      render json: @interest_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interest_lists/1
  def destroy
    @interest_list.destroy
  end

  private

  # Only allow a trusted parameter "white list" through.
  def interest_list_params
    params.require(:interest_list).permit(:name, :public, :user_id)
  end
end
