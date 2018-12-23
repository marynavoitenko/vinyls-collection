class Artist < ApplicationRecord
  has_many :artists_tracks
  has_many :tracks, through: :artists_tracks

  has_many :artists_vinyls
  has_many :vinyls, through: :artists_vinyls

  validates :name, presence: true
  validates :name, uniqueness: true
end
