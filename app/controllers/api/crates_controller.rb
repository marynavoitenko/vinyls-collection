# frozen_string_literal: true

module Api
  class CratesController < ApplicationController
    before_action :set_crate, only: [:show, :update]

    def index
      render json: crates
    end

    def create
      crate = Crate.new(crate_params)
      if crate.save
        render json: crate
      else
        render json: {message: 'Crate was not created'}
      end
    end

    def show
      render json: @crate
    end

    def update
      @crate.update(crate_params)
      if @crate.save
        render json: @crate
      else
        render json: { message: 'Crate was not updated' }, status: 422
      end
    end

    private

    def crates
      @crates ||= Crate.all.eager_load(crates_preloads)
    end

    def crates_preloads
      [
        :vinyls
      ]
    end

    def crate_params
      params.require(:crate).permit(:name, :description)
    end

    def set_crate
      @crate = Crate.eager_load(crates_preloads).find(params[:id])
    end
  end
end
