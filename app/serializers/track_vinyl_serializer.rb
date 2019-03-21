class TrackVinylSerializer < ActiveModel::Serializer
  attributes :id, :code, :title, :release_date
end
