# frozen_string_literal: true

module Api
  class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show, :update]

    def index
      render json: artists
    end

    def create
      artist = Artist.new(artist_params)

      if artist.save
        render json: artist
      else
        render json: { message: 'Artist was not created' }, status: 422
      end
    end

    def show
      render json: @artist
    end

    def update
      @artist.update(artist_params)
      if @artist.save
        render json: @artist
      else
        render json: { message: 'Artist was not updated' }, status: 422
      end
    end

    private

    def artists
      @artists ||= Artist.all.eager_load(artists_preloads)
    end

    def artists_preloads
      [
        :vinyls
      ]
    end

    def artist_params
      params.require(:artist).permit(:name)
    end

    def set_artist
      @artist = Artist.eager_load(artists_preloads).find(params[:id])
    end
  end
end
