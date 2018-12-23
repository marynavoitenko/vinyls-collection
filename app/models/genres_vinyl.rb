# frozen_string_literal: true

class GenresVinyl < ApplicationRecord
  belongs_to :genre
  belongs_to :vinyl
end
