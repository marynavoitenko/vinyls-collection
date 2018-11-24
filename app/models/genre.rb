# == Schema Information
#
# Table name: genres
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
  has_many :genre_vinyls
  has_many :vinyls, through: :genre_vinyls
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
