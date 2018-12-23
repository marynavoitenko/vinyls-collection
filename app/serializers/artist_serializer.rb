# frozen_string_literal: true

class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url

  has_many :vinyls

  def vinyls
    vinyls = object.vinyls
    vinyls.flat_map do |vinyl|
      vinyl.tracks.flat_map { |track| [id: track.id, title: track.title, artists: track.artists.flat_map { |artist| [id: artist.id, name: artist.name] }] }
    end
  end
end
