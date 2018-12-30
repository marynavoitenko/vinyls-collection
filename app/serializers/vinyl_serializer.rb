# frozen_string_literal: true

class VinylSerializer < ActiveModel::Serializer
  attributes :id, :code, :title, :image_url, :release_date

  belongs_to :crate
  belongs_to :label
  has_many :genres
  has_many :tracks

  def release_date
    object.release_date.strftime("%B %e %Y")
  end

  def tracks
    object.tracks.flat_map { |track| [id: track.id, title: track.title, artists: track.artists.flat_map { |artist| [id: artist.id, name: artist.name] }] }
  end

end
