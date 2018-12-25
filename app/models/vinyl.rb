# frozen_string_literal: true

class Vinyl < ApplicationRecord
  belongs_to :crate, required: false
  belongs_to :label, required: false

  has_many :tracks

  has_many :artists_vinyls
  has_many :artists, through: :artists_vinyls

  has_many :genres_vinyls
  has_many :genres, through: :genres_vinyls

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :code, uniqueness: true

  accepts_nested_attributes_for :label

  def label_attributes=(label_attributes)
    label = Label.find_or_create_by(label_attributes)
    self.label = label
  end
end
