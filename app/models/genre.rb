class Genre < ApplicationRecord
  has_many :genres_vinyls
  has_many :vinyls, through: :genres_vinyls

  validates :name, presence: true
  validates :name, uniqueness: true
end
