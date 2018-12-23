# frozen_string_literal: true

class LabelsController < ApplicationController
  before_action :set_label, only: [:show]

  def index
    render json: Label.all
  end

  def show
    render json: @label
  end

  private

  def set_label
    @label = Label.find(params[:id])
  end
end
