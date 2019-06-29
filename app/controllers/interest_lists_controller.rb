class InterestListsController < ApplicationController
  before_action :set_interest_list, only: [:show, :update, :destroy]

  # GET /users/:user_id/interest_lists
  def index
    @interest_lists = InterestList.all

    render json: @interest_lists
  end

  # GET /interest_lists/1
  def show
    render json: @interest_list
  end

  # POST /users/:user_id/interest_lists
  def create
    @interest_list = InterestList.new(interest_list_params)

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
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_list
      @interest_list = InterestList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interest_list_params
      params.require(:interest_list).permit(:name, :public, :user_id)
    end
end
