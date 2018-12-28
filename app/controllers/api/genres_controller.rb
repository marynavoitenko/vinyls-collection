# frozen_string_literal: true

module Api
  class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :update]

    def index
      render json: Genre.all
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

    def genre_params
      params.require(:genre).permit(:name)
    end

    def set_genre
      @genre = Genre.find(params[:id])
    end
  end
end
