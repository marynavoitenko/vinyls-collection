class VinylSerializer < ActiveModel::Serializer
  attributes :id, :code, :label, :name

  belongs_to :crate
  belongs_to :label
  has_many :tracks
  has_many :artists
end
