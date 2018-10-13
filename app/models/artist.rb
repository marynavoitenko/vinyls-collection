class Artist < ApplicationRecord
    has_many :artist_tracks
    has_many :tracks, through: :artist_tracks
end
