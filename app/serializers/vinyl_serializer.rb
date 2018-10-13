class VinylSerializer < ActiveModel::Serializer
  attributes :id, :code, :label, :name

  belongs_to :crate
  has_many :tracks
end
