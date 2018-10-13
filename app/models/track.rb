class Track < ApplicationRecord
    belongs_to :vinyl, required: false
    has_many :artist_tracks
    has_many :artists, through: :artist_tracks
end
