# == Schema Information
#
# Table name: genre_vinyls
#
#  id         :bigint(8)        not null, primary key
#  genre_id   :integer
#  vinyl_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GenreVinyl < ApplicationRecord
  belongs_to :genre
  belongs_to :vinyl
end
