# frozen_string_literal: true

class GenresController < ApplicationController
  before_action :set_genre, only: [:show]

  def index
    render json: Genre.all
  end

  def show
    render json: @genre
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
