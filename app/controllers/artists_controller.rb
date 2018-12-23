# frozen_string_literal: true

class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  def index
    render json: Artist.all
  end

  def show
    render json: @artist
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
