class CrateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :vinyls
end
