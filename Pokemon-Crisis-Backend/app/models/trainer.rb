class Trainer < ApplicationRecord
  has_many :pokeballs
  has_many :pokemons, through: :pokeballs
end
