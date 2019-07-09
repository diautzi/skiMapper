require 'pry'

class Api::V1::CompletedTrailsController < ApplicationController

  def index
    @favorites = CompletedTrail.all
    render json: @favorites
  end

  def show
    @favorite = CompletedTrail.find(params[:id])
    render json: @favorite
  end

  def create
    @favorite= CompletedTrail.new(completed_trail_params)
      # user_id: params[:user_id],
      # trail_id: params[:trail_id],
      # trail_name: params[:trail_name],
      # trail_image: params[:trail_image],
      # trail_location: params[:trail_location],
      # trail_length: params[:trail_length],
      # trail_difficulty: params[:trail_difficulty]

    if @favorite.save
      render json: @favorite
    end
  end


  def destroy
    @favorite = CompletedTrail.find(params[:id])
    @favorite.destroy
    render json: @favorite
  end

  private

  def completed_trail_params
    params.require(:completed_trail).permit(
      :user_id,
      :trail_id,
      :trail_name,
      :trail_image,
      :trail_location,
      :trail_length,
      :trail_difficulty
    )
  end


end
