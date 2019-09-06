class FavoritesController < ApplicationController
  load_and_authorize_resource

  # GET /users/:user_id/favorites
  def index
    render json: @favorites
  end

  # GET /favorites/1
  def show
    render json: @favorite
  end

  # POST /users/:user_id/favorites
  def create
    if @favorite.save
      render json: @favorite, status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  def update
    if @favorite.update(favorite_params)
      render json: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  def destroy
    @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:users_id, :public)
  end
end
