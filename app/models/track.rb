# == Schema Information
#
# Table name: tracks
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  vinyl_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  belongs_to :vinyl, required: false
  has_many :artist_tracks
  has_many :artists, through: :artist_tracks

  validates :title, presence: true
end
