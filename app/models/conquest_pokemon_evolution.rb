class ConquestPokemonEvolution < ApplicationRecord
  belongs_to :pokemon_specy, foreign_key: :evolved_species_id
  belongs_to :stat, foreign_key: :required_stat_id
  belongs_to :conquest_kingdom, foreign_key: :kingdom_id
  belongs_to :gender, foreign_key: :warrior_gender_id
  belongs_to :item, foreign_key: :item_id
end
