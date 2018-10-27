class Artist < ApplicationRecord
    has_many :artist_tracks
    has_many :tracks, through: :artist_tracks

    has_many :artist_vinyls
    has_many :vinyls, through: :artist_vinyls
end
