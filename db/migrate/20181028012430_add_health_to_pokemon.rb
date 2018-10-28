class AddHealthToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :Health, :integer
  end
end
