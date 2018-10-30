class Genre < ApplicationRecord
  has_many :genre_vinyls
  has_many :vinyls, through: :genre_vinyls
end
