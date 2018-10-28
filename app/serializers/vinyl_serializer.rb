class VinylSerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :image_url, :release_date

  belongs_to :crate
  belongs_to :label
  has_many :tracks

  def tracks
    object.tracks.collect { |track| [id: track.id, title: track.title, artists: track.artists.map { |artist| [id: artist.id, name: artist.name] }] }
  end
end
