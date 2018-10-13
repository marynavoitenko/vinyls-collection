class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title

  belongs_to :vinyl
  has_many :artists
end
