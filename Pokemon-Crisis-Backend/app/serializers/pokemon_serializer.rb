class PokemonSerializer < ActiveModel::Serializer
  belongs_to :trainer
  attributes :id
end
