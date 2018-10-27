class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :tracks
  has_many :vinyls
end
