# frozen_string_literal: true

class LabelSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :vinyls
end
