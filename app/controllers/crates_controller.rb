class CratesController < ApplicationController
  before_action :set_crate, only: [:show]

  def index
      render json: Crate.all
  end

  def show
      render json: @crate
  end

  private

  def set_crate
      @crate = Crate.find(params[:id])
  end
end
