# == Schema Information
#
# Table name: artists
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :text
#

class Artist < ApplicationRecord
  has_many :artist_tracks
  has_many :tracks, through: :artist_tracks

  has_many :artist_vinyls
  has_many :vinyls, through: :artist_vinyls

  validates :name, presence: true
  validates :name, uniqueness: true
end
