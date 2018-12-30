# frozen_string_literal: true

module Api
  class VinylsController < ApplicationController
    before_action :set_vinyl, only: [:show, :update]

    def index
      render json: Vinyl.all, include: [:crates, :labels, :genres_vinyls, :tracks]
    end

    def create
      vinyl = Vinyl.new(vinyl_params)
      if vinyl.save
        render json: vinyl, include: [:crates, :labels, :genres_vinyls, :tracks]
      else
        render json: { message: 'Vinyl was not created' }, status: 422
      end
    end

    def show
      render json: @vinyl, include: [:crates, :labels, :genres_vinyls, :tracks]
    end

    def update
      # TODO: associations update
      @vinyl.update(vinyl_params)
      if @vinyl.save
        render json: @vinyl, include: [:crates, :labels, :genres_vinyls, :tracks] 
      else
        render json: { message: 'Vinyl was not updated' }, status: 422
      end
    end

    private

    def set_vinyl
      @vinyl = Vinyl.find(params[:id])
    end

    def vinyl_params
      params.require(:vinyl).permit(
        :code, :title, :image_url, :release_date,
        crate_attributes: [:name, :description],
        label_attributes: [:name, :description],
        genres_attributes: [:name],
        tracks_attributes: [:title, artists_attributes: [:name]]
      )
    end
  end
end
