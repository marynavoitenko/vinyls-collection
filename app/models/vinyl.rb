class Vinyl < ApplicationRecord
    belongs_to :crate, required: false
    has_many :tracks
end
