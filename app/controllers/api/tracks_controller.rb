# frozen_string_literal: true

module Api
  class TracksController < ApplicationController
    before_action :set_track, only: [:show, :update]

    def index
      render json: Track.all
    end

    def create
      track = Track.new(track_params)

      if track.save
        render json: track
      else
        render json: { message: 'Track was not created' }, status: 422
      end
    end

    def show
      render json: @track
    end

    def update
      @track.update(track_params)
      if @track.save
        render json: @track
      else
        render json: { message: 'Track was not updated' }, status: 422
      end
    end

    private

    def track_params
      params.require(:track).permit(:title, artists_attributes: [:name])
    end

    def set_track
      @track = Track.find(params[:id])
    end
  end
end
