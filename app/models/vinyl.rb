# == Schema Information
#
# Table name: vinyls
#
#  id           :bigint(8)        not null, primary key
#  code         :text
#  name         :text
#  crate_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  label_id     :integer
#  image_url    :text
#  release_date :date
#

class Vinyl < ApplicationRecord
  belongs_to :crate, required: false
  belongs_to :label, required: false

  has_many :tracks

  has_many :artist_vinyls
  has_many :artists, through: :artist_vinyls

  has_many :genre_vinyls
  has_many :genres, through: :genre_vinyls

  validates :name, presence: true
end
