# frozen_string_literal: true

module Api
  class LabelsController < ApplicationController
    before_action :set_label, only: [:show, :update]

    def index
      render json: Label.all
    end

    def create
      label = Label.new(label_params)
      if label.save
        render json: label
      else
        render json: {message: 'Label was not created'}
      end
    end

    def show
      render json: @label
    end

    def update
      @label.update(label_params)
      if @label.save
        render json: @label
      else
        render json: { message: 'Label was not updated' }, status: 422
      end
    end

    private

    def label_params
      params.require(:label).permit(:name, :description)
    end

    def set_label
      @label = Label.find(params[:id])
    end
  end
end
