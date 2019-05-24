class AddDataToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :api_id, :string
    add_column :pokemons, :abilities, :string
    add_column :pokemons, :height, :string
    add_column :pokemons, :sprites, :string
    add_column :pokemons, :stats, :string
    add_column :pokemons, :types, :string
    add_column :pokemons, :weight, :string
    add_column :pokemons, :moves, :string
    add_column :pokemons, :base_xp, :string

  end
end
