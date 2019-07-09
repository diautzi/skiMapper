require_relative '../../../../lib/api_communicator.rb'

class Api::V1::TrailsController < ApplicationController

  before_action :find_game, only: [:show]

  def index
    @trails= APICall.get_data
    render json: @trails
  end

  def show
    @trail = Trail.find(params[:id])
    render json: @trail
  end

  def create
    @trail = Trail.new(trail_params)
    if @trail.save
      render json: @trail
    end
  end

  private

  def trail_params
    params.require(:trail).permit(
      :id,
      :name,
      :type,
      :difficulty,
      :stars,
      :starVotes,
      :location,
      :imgSqSmall,
      :imgSmall,
      :imgSmallMed,
      :imgMedium,
      :length,
      :ascent,
      :descent,
      :high,
      :low,
      :longitude,
      :latitude,
      :conditionStatus,
      :conditionDetails,
      :conditionDate)
  end

  def trail_api_call
    APICall.get_data
  end


end
