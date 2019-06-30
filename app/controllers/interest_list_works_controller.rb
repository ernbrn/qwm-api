# frozen_string_literal: true

class InterestListWorksController < ApplicationController
  before_action :set_interest_list_work, only: [:show, :update, :destroy]

  # GET /interest_list_works
  def index
    @interest_list_works = InterestListWork.all

    render json: @interest_list_works
  end

  # GET /interest_list_works/1
  def show
    render json: @interest_list_work
  end

  # POST /interest_list_works
  def create
    @interest_list_work = InterestListWork.new(interest_list_work_params)

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

  # Use callbacks to share common setup or constraints between actions.
  def set_interest_list_work
    @interest_list_work = InterestListWork.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def interest_list_work_params
    params.require(:interest_list_work).permit(:interest_list_id, :work_id)
  end
end
