# frozen_string_literal: true

class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :artists, serializer: ArtistTrackSerializer
  belongs_to :vinyl, serializer: TrackVinylSerializer
end
