class Vinyl < ApplicationRecord
    belongs_to :crate, required: false
    belongs_to :label, required: false

    has_many :tracks

    has_many :artist_vinyls
    has_many :artists, through: :artist_vinyls

    has_many :genre_vinyls
    has_many :genres, through: :genre_vinyls
end
