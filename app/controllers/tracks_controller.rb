class TracksController < ApplicationController
  before_action :set_track, only: [:show]

  def index
      render json: Track.all
  end
  
  def show
      render json: @track
  end

  private

  def set_track
      @track = Track.find(params[:id])
  end
end
