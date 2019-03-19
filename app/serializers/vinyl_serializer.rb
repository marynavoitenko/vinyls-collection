# frozen_string_literal: true

class VinylSerializer < ActiveModel::Serializer
  attributes :id, :code, :title, :image_url, :release_date

  belongs_to :crate
  belongs_to :label
  has_many :genres
  has_many :tracks, serializer: VinylTrackSerializer

  def release_date
    object.release_date.strftime("%B %e %Y")
  end
end
