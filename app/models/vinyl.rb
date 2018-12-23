# frozen_string_literal: true

class Vinyl < ApplicationRecord
  belongs_to :crate, required: false
  belongs_to :label, required: false

  has_many :tracks

  has_many :artists_vinyls
  has_many :artists, through: :artists_vinyls

  has_many :genres_vinyls
  has_many :genres, through: :genres_vinyls

  validates :name, presence: true
end
