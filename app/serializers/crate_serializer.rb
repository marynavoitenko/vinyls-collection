# frozen_string_literal: true

class CrateSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :vinyls
end
