class VinylTrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artists

  has_many :artists, serializer: ArtistTrackSerializer
end
