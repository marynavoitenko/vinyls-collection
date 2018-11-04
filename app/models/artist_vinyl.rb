# == Schema Information
#
# Table name: artist_vinyls
#
#  id         :bigint(8)        not null, primary key
#  artist_id  :integer
#  vinyl_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtistVinyl < ApplicationRecord
  belongs_to :artist
  belongs_to :vinyl
end
