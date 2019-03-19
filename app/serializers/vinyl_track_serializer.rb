class VinylTrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artists

  # doesn't do anything - why?
  # has_many :artists, serializer: ArtistTrackSerializer

  def artists
    ActiveModelSerializers::SerializableResource.new(
      object.artists,
      each_serializer: ArtistTrackSerializer
    )
  end
end
