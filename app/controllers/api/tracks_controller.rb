# frozen_string_literal: true

module Api
  class TracksController < ApplicationController
    before_action :set_track, only: [:show, :update]

    def index
      render json: tracks
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

    def tracks
      @tracks ||= Track.all.eager_load(tracks_preloads)
    end

    def tracks_preloads
      [
        :artists,
        :vinyl
      ]
    end

    def track_params
      params.require(:track).permit(:title, artists_attributes: [:name])
    end

    def set_track
      @track = Track.eager_load(tracks_preloads).find(params[:id])
    end
  end
end
