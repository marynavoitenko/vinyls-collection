# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :vinyl, required: false

  has_many :artists_tracks
  has_many :artists, through: :artists_tracks

  validates :title, presence: true

  accepts_nested_attributes_for :artists

  def self.find_or_create_track_with_artist(track_attributes)
    track = Track.find_by(title: track_attributes['title'])
    Track.create(track_attributes) unless track
  end

  def artists_attributes=(artists_attributes)
    artists_attributes.each do |artist_attribute|
      artist = Artist.find_or_create_by(artist_attribute)
      self.artists << artist
    end
  end
end
