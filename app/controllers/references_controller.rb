class ReferencesController < ApplicationController
  load_and_authorize_resource

  # GET /works/:work_id/references
  # GET /creators/:creator_id/references
  def index
    @references = Reference.all

    render json: @references
  end

  # GET /references/1
  def show
    render json: @reference
  end

  # POST /works/:work_id/references
  # POST /creators/:creator_id/references
  def create
    @reference = Reference.new(reference_params)

    if @reference.save
      render json: @reference, status: :created, location: @reference
    else
      render json: @reference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /references/1
  def update
    if @reference.update(reference_params)
      render json: @reference
    else
      render json: @reference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /references/1
  def destroy
    @reference.destroy
  end

  private

  def reference_params
    params.require(:reference).permit(:note)
  end
end
