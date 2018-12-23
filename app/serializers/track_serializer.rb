# frozen_string_literal: true

class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :artists
  belongs_to :vinyl
end
