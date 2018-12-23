# frozen_string_literal: true

class Crate < ApplicationRecord
  has_many :vinyls

  validates :name, presence: true
  validates :name, uniqueness: true
end
