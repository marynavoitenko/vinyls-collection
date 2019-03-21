# frozen_string_literal: true

module Api
  class LabelsController < ApplicationController
    before_action :set_label, only: [:show, :update]

    def index
      render json: labels
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

    def labels
      @labels ||= Label.all.eager_load(labels_preloads)
    end

    def labels_preloads
      [
        :vinyls
      ]
    end

    def label_params
      params.require(:label).permit(:name, :description)
    end

    def set_label
      @label = Label.eager_load(labels_preloads).find(params[:id])
    end
  end
end
