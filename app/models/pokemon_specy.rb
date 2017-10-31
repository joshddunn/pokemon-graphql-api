class PokemonSpecy < ApplicationRecord
  belongs_to :pokemon_color, foreign_key: :color_id
  belongs_to :pokemon_specy, foreign_key: :evolves_from_species_id
  belongs_to :generation, foreign_key: :generation_id
  belongs_to :evolution_chain, foreign_key: :evolution_chain_id
  belongs_to :pokemon_shape, foreign_key: :shape_id
  belongs_to :pokemon_habitat, foreign_key: :habitat_id
  belongs_to :growth_rate, foreign_key: :growth_rate_id

  has_many :pokemons, foreign_key: :species_id
  has_many :pokemon_species, foreign_key: :evolves_from_species_id
  has_many :pal_parks, foreign_key: :species_id
  has_many :pokemon_dex_numbers, foreign_key: :species_id
  has_many :pokemon_egg_groups, foreign_key: :species_id
  has_many :evolved_species, class_name: "PokemonEvolution", foreign_key: :evolved_species_id 
  has_many :party_species, class_name: "PokemonEvolution", foreign_key: :party_species_id
  has_many :trade_species, class_name: "PokemonEvolution", foreign_key: :trade_species_id
  has_many :pokemon_species_flavor_summaries, foreign_key: :pokemon_species_id
  has_many :pokemon_species_flavor_texts, foreign_key: :species_id
  has_many :pokemon_species_names, foreign_key: :pokemon_species_id
  has_many :pokemon_species_proses, foreign_key: :pokemon_species_id
  has_many :conquest_max_links, foreign_key: :pokemon_species_id
  has_many :conquest_pokemon_abilities, foreign_key: :pokemon_species_id
  has_many :conquest_pokemon_evolutions, foreign_key: :evolved_species_id
  has_many :conquest_pokemon_moves, foreign_key: :pokemon_species_id
  has_many :conquest_pokemon_stats, foreign_key: :pokemon_species_id
  has_many :conquest_transformation_pokemons, foreign_key: :pokemon_species_id
end
