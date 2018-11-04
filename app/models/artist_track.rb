# == Schema Information
#
# Table name: artist_tracks
#
#  id         :bigint(8)        not null, primary key
#  artist_id  :integer
#  track_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtistTrack < ApplicationRecord
    belongs_to :artist
    belongs_to :track
end
