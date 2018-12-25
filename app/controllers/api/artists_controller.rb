# frozen_string_literal: true

module Api
  class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show]

    def index
      render json: Artist.all
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

    private

    def artist_params
      params.require(:artist).permit(:name)
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end
  end
end
