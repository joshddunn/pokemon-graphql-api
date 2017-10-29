class PokemonEvolution < ApplicationRecord
    belongs_to :evolution_trigger, foreign_key: :evolution_trigger_id
    belongs_to :gender, foreign_key: :gender_id
    belongs_to :held_item, class_name: "Item", foreign_key: :held_item_id
    belongs_to :trigger_item, class_name: "Item", foreign_key: :trigger_item_id
    belongs_to :location, foreign_key: :location_id
    belongs_to :move, foreign_key: :known_move_id
    belongs_to :evolved_specy, class_name: "PokemonSpecy", foreign_key: :evolved_species_id
    belongs_to :party_specy, class_name: "PokemonSpecy", foreign_key: :party_species_id
    belongs_to :trade_specy, class_name: "PokemonSpecy", foreign_key: :trade_species_id
    belongs_to :known_move_type, class_name: "Type", foreign_key: :known_move_type_id
    belongs_to :party_type, class_name: "Type", foreign_key: :party_type_id
end
