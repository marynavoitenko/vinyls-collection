# frozen_string_literal: true

class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url

  has_many :vinyls

  def vinyls
    vinyls = object.vinyls
    vinyls.map do |vinyl|
      vinyl.tracks.collect { |track| [id: track.id, title: track.title, artists: track.artists.map { |artist| [id: artist.id, name: artist.name] }] }
    end
  end
end
