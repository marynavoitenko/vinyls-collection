class VinylsController < ApplicationController
  before_action :set_vinyl, only: [:show]

  def index
      render json: Vinyl.all
  end

  def show
      render json: @vinyl
  end

  private

  def set_vinyl
      @vinyl = Vinyl.find(params[:id])
  end
end
