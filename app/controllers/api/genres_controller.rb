# frozen_string_literal: true

module Api
  class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :update]

    def index
      render json: genres
    end

    def create
      genre = Genre.new(genre_params)
      if genre.save
        render json: genre
      else
        render json: { message: 'Genre was not created' }, status: 422
      end
    end

    def show
      render json: @genre
    end

    def update
      @genre.update(genre_params)
      if @genre.save
        render json: @genre
      else
        render json: { message: 'Genre was not updated' }, status: 422
      end
    end

    private

    def genres
      @genres ||= Genre.all.eager_load(genres_preloads)
    end

    def genres_preloads
      [
        :vinyls
      ]
    end

    def genre_params
      params.require(:genre).permit(:name)
    end

    def set_genre
      @genre = Genre.eager_load(genres_preloads).find(params[:id])
    end
  end
end
