# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :vinyl, required: false
  has_many :artists_tracks
  has_many :artists, through: :artists_tracks

  validates :title, presence: true
end
