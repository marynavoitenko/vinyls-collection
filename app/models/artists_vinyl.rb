# frozen_string_literal: true

class ArtistsVinyl < ApplicationRecord
  belongs_to :artist
  belongs_to :vinyl
end
