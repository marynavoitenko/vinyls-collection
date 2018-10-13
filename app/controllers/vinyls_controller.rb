class VinylsController < ApplicationController
  before_action :set_vinyl, only: [:show]

  def index
      render json: Vinyl.all
  end

  def create
    vinyl = Vinyl.new(vinyl_params)

    if vinyl.save
      render json: vinyl
    else
      render json: { message: 'Vinyl was not created' }, status: 422
    end
  end

  def show
      render json: @vinyl
  end

  private

  def set_vinyl
      @vinyl = Vinyl.find(params[:id])
  end

  def vinyl_params
    params.require(:vinyl).permit(:code, :label, :name)
  end
end
